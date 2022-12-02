<?php
//HEADERS
header('Access-Control-Allow-Orign: *');
header('Content-Type: application/json');

include_once '../config/database.php';
include_once '../models/post.php';

//INSTANCIA A DB Y CONNECT
$database = new Database();
$db = $database->connect();

//INSTANCIA A POST OBJET
$post = new POST($db);

$result = $post->read();

$num = $result->rowCount();

if($num > 0){
    $post_array = array();
    $post_array['reticula'] = array();
    while($row = $result->fetch(PDO::FETCH_ASSOC)){
        extract($row);
        $post_item = array(
            'id_materia' => $id_materia,
            'nombre' => $nombre,
            'horas_teoria' => $horas_teoria,
            'horas_practica' => $horas_practica,
            'semestre' => $id_semestre     
        );

        array_push($post_array['reticula'], $post_item);
    }
    echo json_encode($post_array);
}else{
    echo json_encode(
        array('message' => 'No Post Found') 
    );
}