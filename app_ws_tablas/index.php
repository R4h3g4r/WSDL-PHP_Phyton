<?php
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
      // solo si se encuentra el caracter en el archivo se hace la busqueda
      $file_path = $constants['user']['HOST'] . $constants['user']['CAMBIAR_LOGICA'] . $word_search['file'];
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

@$server->service(file_get_contents('php://input'));
