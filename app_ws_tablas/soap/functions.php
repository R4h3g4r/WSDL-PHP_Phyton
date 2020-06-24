<?php
define('HOST', 'www.servicio-tablas.cl');
define('PROT', 'http://');
define('DELIMITER_URL1', ';');
define('DELIMITER_URL2', ';url2');
define('NOT_FOUND_MESSAGE', 'No fue encontrado.');
define('EMPTY_FIELD_MESSAGE', 'El campo no puede estar vacio.');

function get_url_from_file($word_search)
{
    $constants =  get_defined_constants(true);
    if (empty($word_search)) {
        return $constants['user']['EMPTY_FIELD_MESSAGE'];
    }
    // solo si se encuentra el caracter en el archivo se hace la busqueda
    $file_path = $constants['user']['PROT'].$constants['user']['HOST'].'/PagueDirecto.parametros';
    try {
        $file = file_get_contents($file_path);
        $find = strpos($file, $word_search);
        if ($find === false) {
            return $constants['user']['NOT_FOUND_MESSAGE'];
        } else {
            return search_url($file, $word_search);
        }
    } catch (\Throwable $th) {
        // TODO: mejorar la respuesta del try 
        var_dump($th);
    }
}

function search_url($texto_completo, $palabra_buscada)
{
    $constants =  get_defined_constants(true);
    $return_url = "";
    $largo_basura = 5; // strlen("desc="), strlen("url2=")

    $palabra_buscada_position = strpos($texto_completo, $palabra_buscada);
    $largo_palabra_buscada = strlen($palabra_buscada);
    $punto_de_partida = $palabra_buscada_position + $largo_palabra_buscada + 1; // se suma 1 por el caracter ;
    $punto_de_termino = strpos($texto_completo, $constants['user']['DELIMITER_URL1'], $punto_de_partida);
    $largo_url = $punto_de_termino - $palabra_buscada_position - $largo_palabra_buscada - 1; // se resta 1 por el caracter ;
    $url = substr($texto_completo, $punto_de_partida + $largo_basura, $largo_url - $largo_basura);

    $delimitador_url2 = substr($texto_completo, $punto_de_partida + $largo_url,$largo_basura);
    // var_dump($delimitador_url2);

    // $tiene_url2 = strpos($texto_completo, $constants['user']['DELIMITER_URL2'], $punto_de_partida + $largo_url + 1); // se suma 1 por el caracter ;
    // var_dump($tiene_url2);
    if ($delimitador_url2 != $constants['user']['DELIMITER_URL2']) {
        $return_url = $url;
    } else {
        $punto_partida_url2 = $punto_de_partida + $largo_url + 1; 
        $posicion_fin_url2 = strpos($texto_completo, $constants['user']['DELIMITER_URL1'], $punto_partida_url2);
        $url2 = substr($texto_completo, $punto_partida_url2 + $largo_basura, $posicion_fin_url2 - $punto_partida_url2 - $largo_basura);    
        $return_url = $url2;
    }

    $result = array(
        "id" => $palabra_buscada,
        "url" => $return_url
    );
    // var_dump($result);
    return var_dump($result);
}

function calculo_edad($datos)
{
    $edad_actual = date('Y') - $datos['ano_nac'];
    $msg = 'Hola, ' . $datos['nombre'] . '. Hemos procesado la siguiente informacion ' . $datos['email'] . ', telefono' . $datos['telefono'] . ' y su Edad actual es: ' . $edad_actual . '.';
    // return array('mensaje' => $msg);
    return $msg;
}
