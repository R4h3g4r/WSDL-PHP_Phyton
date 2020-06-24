<?php
require_once('nusoap-0.9.5/lib/nusoap.php');
# constantes
define('DELIMITER_URL1', ';');
define('DELIMITER_URL2', ';url2');
define('EMPTY_FIELD_MESSAGE', 'El campo no puede estar vacio.');
define('HOST', '172.16.98.54/wsdl_tablas');
define('NOT_FOUND_MESSAGE', 'No fue encontrado.');
define('PROT', 'http://');

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
            'id'   => array('name' => 'id', 'type' => 'xsd:int')
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
            'id'   => array('name' => 'id', 'type' => 'xsd:string'),
            'url'   => array('name' => 'url', 'type' => 'xsd:string')
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
      if (empty($word_search['id'])) {
            return array(
                  'id' => '-1',
                  'url' => $constants['user']['EMPTY_FIELD_MESSAGE']
            );
      }
      // solo si se encuentra el caracter en el archivo se hace la busqueda
      $file_path = $constants['user']['PROT'] . $constants['user']['HOST'] . '/PagueDirecto.parametros';
      try {
            $file = file_get_contents($file_path);
            $find = strpos($file, strval($word_search['id']));
           
            if ($find === false) {
                  return array(
                        'id' => '-' . $word_search['id'],
                        'url' => $constants['user']['NOT_FOUND_MESSAGE']
                  );
            } else {
                  return search_url($file, $word_search['id']);
            }
      } catch (\Throwable $th) {
            // TODO: mejorar la respuesta del try 
            var_dump($th);
      }
}

function search_url($texto_completo, $palabra_buscada)
{
      $palabra_buscada = $palabra_buscada.';';
      $constants =  get_defined_constants(true);
      $return_url = "";
      $largo_basura = 5; // strlen("desc="), strlen("url2=")

      $palabra_buscada_position = strpos($texto_completo, strval($palabra_buscada));
      $largo_palabra_buscada = strlen($palabra_buscada);      

      $punto_de_partida = $palabra_buscada_position + $largo_palabra_buscada + 1; // se suma 1 por el caracter ;
      $punto_de_termino = strpos($texto_completo, $constants['user']['DELIMITER_URL1'], $punto_de_partida);
      $largo_url = $punto_de_termino - $palabra_buscada_position - $largo_palabra_buscada - 1; // se resta 1 por el caracter ;
      $url = substr($texto_completo, $punto_de_partida + $largo_basura - 1, $largo_url - $largo_basura + 1);

      $delimitador_url2 = substr($texto_completo, $punto_de_partida + $largo_url, $largo_basura);


      if ($delimitador_url2 != $constants['user']['DELIMITER_URL2']) {
            $return_url = $url;
      } else {
            $punto_partida_url2 = $punto_de_partida + $largo_url + 1;
            $posicion_fin_url2 = strpos($texto_completo, $constants['user']['DELIMITER_URL1'], $punto_partida_url2);
            $url2 = substr($texto_completo, $punto_partida_url2 + $largo_basura, $posicion_fin_url2 - $punto_partida_url2 - $largo_basura);
            $return_url = $url2;
      }

      # para debuggear y validar
      // var_dump($delimitador_url2, $constants['user']['DELIMITER_URL2'], $delimitador_url2 != $constants['user']['DELIMITER_URL2'], $return_url);

      return array(
            "id" => str_replace($constants['user']['DELIMITER_URL1'],'',$palabra_buscada),
            "url" => $return_url
      );
}

@$server->service(file_get_contents('php://input'));
