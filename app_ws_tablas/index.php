<?php

use function PHPSTORM_META\type;

require_once('nusoap-0.9.5/lib/nusoap.php');
# constantes
define('DELIMITER_1', ';');
define('DELIMITER_URL2', ';url2');
define('EMPTY_FIELD_MESSAGE', 'El campo no puede estar vacio.');
define('HOST', 'http://servicio-tablas.cl/');
define('NOT_FOUND_CLAVE', 'La clave no fue encontrada.');
define('NOT_FOUND_CODIGO', 'El campo codigo no fue encontrado en la tabla.');
define('CAMBIAR_LOGICA', "files/");

# ejemplo 54311;desc=http://www.afphabitat.cl/cgi-bin/bci/mdpbci.cgi;url2=https://www.afphabitat.cl/abonoWeb/notificacion/bci/notificacion.htm;

$server = new soap_server();

// configuracion del webservice
$server->configureWSDL('Server Web', 'urn:server');

$server->wsdl->schemaTargetNamespace = 'urn:server';

// Parametros de entrada
$server->wsdl->addComplexType(
      'in_data',
      'complexType',
      'struct',
      'all',
      '',
      array(
            'file'   => array('name' => 'file', 'type' => 'xsd:string'), # path del archivo
            'clave'   => array('name' => 'clave', 'type' => 'xsd:string'), # convenio clave o id
            'codigo'   => array('name' => 'codigo', 'type' => 'xsd:string') # el campo a traer despues del "="
      )
);
// Parametros de Salida
$server->wsdl->addComplexType(
      'out_data',
      'complexType',
      'struct',
      'all',
      '',
      array(
            'parametro'   => array('name' => 'parametro', 'type' => 'xsd:string')
      )
);

$server->register(
      'get_url_from_file', // nombre del metodo o funcion
      array('in_data' => 'tns:in_data'), // parametros de entrada
      array('return' => 'tns:out_data'), // parametros de salida
      'urn:server', // namespace
      'urn:server#get_url_from_file', // soapaction debe ir asociado al nombre del metodo
      'rpc', // style
      'encoded', // use
      'La siguiente funcion recibe parametro de id y retorna la url' // documentation
);

function get_url_from_file($word_search)
{
      $constants =  get_defined_constants(true);
      if (empty($word_search['clave'])) {
            return array(
                  'parametro' => $constants['user']['EMPTY_FIELD_MESSAGE']
            );
      }

      $file_path = buscar_ruta_archivo('../wsdl_tablas/', $word_search['file']);
      var_dump($file_path);
      exit();
      
      try {
            $file_content = file_get_contents($file_path);
            // TODO: aqui se debe implementar la logica de busqueda del archivo
            $find = strpos($file_content, strval($word_search['clave']));
            if ($find === false) {
                  return array(
                         'parametro' => $constants['user']['NOT_FOUND_CLAVE']
                  );
            } else {
                  return search_url($file_content, $word_search);
            }
      } catch (\Throwable $th) {
            // TODO: mejorar la respuesta del try 
            var_dump($th);
      }
}

function search_url($texto_completo, $data)
{
      $palabra_buscada = $data['clave'].';'; // WSrecurso
      $codigo_buscado = $data['codigo'].'='; // valor
      $largo_palabra_buscada = strlen($palabra_buscada);  
      $largo_codigo_buscado = strlen($codigo_buscado);
      $constants =  get_defined_constants(true);
      $palabra_buscada_position = strpos($texto_completo, strval($palabra_buscada)); 
      $punto_de_partida = $palabra_buscada_position + $largo_palabra_buscada;
      $posicion_codigo = strpos($texto_completo, $codigo_buscado, $punto_de_partida);
      if (!$posicion_codigo) {
            return array(
                  "parametro" => $constants['user']['NOT_FOUND_CODIGO']
            );
      }
      $posicion_inicio_url = $posicion_codigo + $largo_codigo_buscado;
      $posicion_fin_url = strpos($texto_completo, $constants['user']['DELIMITER_1'], $posicion_inicio_url);
      $largo_url = $posicion_fin_url - $posicion_inicio_url;
      $url = substr($texto_completo, $posicion_inicio_url,$largo_url);

      // para debug
      // var_dump("palabra buscada: ".$palabra_buscada);
      // var_dump("largo palabra buscada: ".$largo_palabra_buscada);
      // var_dump("posicion palabra buscada: ".$palabra_buscada_position);
      // var_dump("clave buscada: ".$codigo_buscado);
      // var_dump("largo clave buscada: ".$largo_codigo_buscado);
      // var_dump("posicion clave buscada: ".$posicion_codigo);
      // var_dump($posicion_codigo);
      // var_dump("url: ".$url);
      // die();
      
      return array(
            "parametro" => $url
      );
}

function listar_directorios($directorio_base)
{
      $listado_directorios = Array();
      if (is_dir($directorio_base)) { // validando que sea directorio
            if ($lectura_directorio = opendir($directorio_base)) {
                  while (($archivo = readdir($lectura_directorio)) !== false) {
                        $ruta = $directorio_base . $archivo;
                        if (is_dir($ruta) && $archivo!="." && $archivo!=".."){
                              // var_dump("carpeta -->".$ruta);   
                              // var_dump(gettype($ruta));
                              array_push($listado_directorios, $ruta);
                        } 
                  }
                  closedir($lectura_directorio);
            }
      }
      return $listado_directorios;
}

function buscar_en_archivos($directorio_base, $archivo_buscado)
{
      $listado_archivos = [];
      if (is_dir($directorio_base)) {
            if ($lectura_directorio = opendir($directorio_base)) {
                  while (($archivo = readdir($lectura_directorio)) !== false) {
                        $ruta = $directorio_base . $archivo;
                        if (!is_dir($ruta) && $archivo!="." && $archivo!=".."){
                              if ($archivo == $archivo_buscado) {
                                    array_push($listado_archivos, $ruta);
                              }   
                        }
                  }
                  closedir($lectura_directorio);
            }
      }
      return $listado_archivos;
}

function buscar_ruta_archivo($directorio_base, $archivo_buscado)
{
      // aqui tengo que retornar solo el path del archivo
      # code...
      // $encontrados = buscar_directorios('../wsdl_tablas/');
      $listado_archivos = buscar_en_archivos('../wsdl_tablas/', $archivo_buscado);

      if (count($listado_archivos) > 0) {
            // var_dump($listado_archivos[0]);
            return $listado_archivos[0];
            // esta retornando solo el primer path del archivo que coincidio el nombre
      }

      $listado_directorios = listar_directorios('../wsdl_tablas/');
      
      foreach ($listado_directorios as $directorio) {
            $listado_archivos = buscar_en_archivos($directorio.'/', $archivo_buscado);
            if (count($listado_archivos) > 0) {
                  return $listado_archivos[0];
            } else {
                  $listado_sub_directorios = listar_directorios($directorio.'/');
                  foreach ($listado_sub_directorios as $sub_directorio) {
                        var_dump($sub_directorio.'/');
                        $listado_archivos_subdirectorio = buscar_en_archivos($sub_directorio.'/', $archivo_buscado);
                        var_dump($listado_archivos_subdirectorio);

                        // if (count($listado_archivos_subdirectorio) > 0) {
                        //       return $listado_archivos_subdirectorio[0];
                        // } else {
                        //       // var_dump($sub_directorio);
                        //       // $listado_sub_directorio_2 = listar_directorios($sub_directorio.'/');
                        //       // var_dump($listado_sub_directorio_2);
                        //       // if (count($listado_sub_directorio_2) > 0) {
                        //             // var_dump($listado_sub_directorio_2);
                        //             // foreach ($listado_sub_directorio_2 as $sub_directorio_2) {
                        //             //       var_dump($sub_directorio_2);
                        //             //       $listado_archivos_subdirectorio_2 = buscar_en_archivos($sub_directorio_2.'/', $archivo_buscado);  
                        //             //       // var_dump($listado_archivos_subdirectorio_2);                                        
                        //             //       // if (count($listado_archivos_subdirectorio_2) > 0) {
                        //             //       //       return $listado_archivos_subdirectorio_2[0];
                        //             //       // }
                        //             // }
                        //       // }                              
                        // }                              
                  }
            }
      }
      
      
      
      
      
      
      
      // $listado_directorios = Array();
      // $listado_archivos = [];
      // $encontrados = "";
      // if (is_dir($directorio_base)) { // validando que sea directorio
      //       if ($lectura_directorio = opendir($directorio_base)) {
      //             while (($archivo = readdir($lectura_directorio)) !== false) {
      //                   // echo "nombre archivo: $archivo - tipo archivo: " . filetype($directorio_base . $archivo) . "\n";
      //                   $ruta = $directorio_base . $archivo;
      //                   if (is_dir($ruta) && $archivo!="." && $archivo!=".."){
      //                         // son solo directorios
      //                         // var_dump("carpeta -->".$ruta);   
      //                         // var_dump(gettype($ruta));
      //                         array_push($listado_directorios, $ruta);
      //                   } else {
      //                         // var_dump(gettype($ruta));
      //                         // var_dump("archivo -->".$ruta);
      //                         if ($archivo == $archivo_buscado) {
      //                               array_push($listado_archivos, $ruta);
      //                         }                              
      //                   }
      //             }
      //             closedir($lectura_directorio);
      //       }
      // }
      // return $listado_archivos;

}


@$server->service(file_get_contents('php://input'));
