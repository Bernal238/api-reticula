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

$post->id = isset($_GET['id']) ? $_GET['id'] : die();

$post->readId();

$post_arr = array(
    'Id Materia' => $post->id_materia,
    'Nombre' => $post->nombre,
    'Horas teoria' => $post->horas_teoria,
    'Horas practica' => $post->horas_practica,
    'Semestre' => $post->id_semestre
);

print_r(json_encode($post_arr));