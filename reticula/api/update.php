<?php
//HEADERS
header('Access-Control-Allow-Orign: *');
header('Content-Type: application/json');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Methods, Authorization, X-Requested-With');

include_once '../config/database.php';
include_once '../models/post.php';

//INSTANCIA A DB Y CONNECT
$database = new Database();
$db = $database->connect();

//INSTANCIA A POST OBJET
$post = new POST($db);

$data = json_decode(file_get_contents("php://input"));

$post->id = $data->id;
$post->id_materia = $data->id_materia;
$post->nombre = $data->nombre;
$post->horas_teoria = $data->horas_teoria;
$post->horas_practica = $data->horas_practica;
$post->id_semestre = $data->id_semestre;

if($post->update()){
    echo json_encode(
        array('message' => 'Actualizado')
    );
}else{
    echo json_encode(
        array('message' => 'No Actualizado')
    );
}