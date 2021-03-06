<?php
require_once('nusoap-0.9.5/lib/nusoap.php');
# constantes
define('DELIMITER_1', ';');
define('DELIMITER_URL2', ';url2');
define('EMPTY_FIELD_MESSAGE', 'El campo no puede estar vacio.');
define('HOST', 'http://servicio-tablas.cl/');
define('NOT_FOUND_CLAVE', 'La clave no fue encontrada.');
define('NOT_FOUND_CODIGO', 'El campo codigo no fue encontrado en la tabla.');

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
      'get_url_from_file',
      array('in_data' => 'tns:in_data'),
      array('return' => 'tns:out_data'),
      'urn:server',
      'urn:server#get_url_from_file',
      'rpc',
      'encoded',
      'La siguiente funcion recibe parametro de id y retorna la url'
);

function get_url_from_file($word_search)
{
      $constants =  get_defined_constants(true);
      if (empty($word_search['clave'])) {
            return array(
                  'parametro' => $constants['user']['EMPTY_FIELD_MESSAGE']
            );
      }
      $path = [];
      recorrer_arbol('../wsdl_tablas/', $word_search['file'], $path);
      $file_path = $path[0];
      try {
            $file_content = file_get_contents($file_path);
            $find = strpos($file_content, strval($word_search['clave']));
            if ($find === false) {
                  return array(
                         'parametro' => $constants['user']['NOT_FOUND_CLAVE']
                  );
            } else {
                  return search_url($file_content, $word_search);
            }
      } catch (\Throwable $th) {
            var_dump($th);
      }
}

function search_url($texto_completo, $data)
{
      $palabra_buscada = $data['clave'].';';
      $codigo_buscado = $data['codigo'].'=';
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

function recorrer_arbol($directorio_base, $archivo_buscado, &$path)
{
      if (is_dir($directorio_base)) { // validando que sea directorio
            if ($lectura_directorio = opendir($directorio_base)) {
                  while (($archivo = readdir($lectura_directorio)) !== false) {
                        if (is_dir($directorio_base . $archivo) && $archivo!="." && $archivo!=".."){
                              recorrer_arbol($directorio_base . $archivo . "/", $archivo_buscado, $path);
                        } else {
                              if ($archivo == $archivo_buscado) {                                    
                                    $dato = $directorio_base.$archivo;
                                    array_push($path, $dato);
                              }
                        }
                  }
                  closedir($lectura_directorio);
            }
      }
}

@$server->service(file_get_contents('php://input'));
