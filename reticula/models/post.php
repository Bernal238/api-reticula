<?php
class Post{
    private $conn;
    private $table = 'materia';

    //CAMPOS DE LA TABLA
    public $id_materia;
    public $nombre;
    public $horas_teoria;
    public $horas_practica;
    public $id_semestre;
    //public $db = new PDO("mysql:host=localhost;dbname=materias;","root"," ");

    //CONSTRUCTOR
    public function __construct($db){
        $this->conn = $db;
    }

    //GET POST 
    public function read(){
        //query
        $query = 'SELECT m.id_materia,
	                     m.nombre,
	                     m.horas_teoria,
	                     m.horas_practica,
                         m.id_semestre
                  FROM materia m
                  ORDER BY m.id_semestre';
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }

    public function readId(){
        $query = 'SELECT m.id_materia,
	                     m.nombre,
	                     m.horas_teoria,
	                     m.horas_practica,
                         m.id_semestre
                  FROM materia m
                  WHERE m.id_materia = ?';
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(1, $this->id);
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        $this->id_materia = $row['id_materia'];
        $this->nombre = $row['nombre'];
        $this->horas_teoria = $row['horas_teoria'];
        $this->horas_practica = $row['horas_practica'];
        $this->id_semestre = $row['id_semestre'];

    }

    public function create(){
        $query = 'INSERT INTO `materia` SET id_materia = :id_materia, nombre = :nombre, horas_teoria = :horas_teoria, horas_practica = :horas_practica, id_semestre = :id_semestre';

        $stmt = $this->conn->prepare($query);

        $this->id_materia = htmlspecialchars(strip_tags($this->id_materia));
        $this->nombre = htmlspecialchars(strip_tags($this->nombre));
        $this->horas_teoria = htmlspecialchars(strip_tags($this->horas_teoria));
        $this->horas_practica = htmlspecialchars(strip_tags($this->horas_practica));
        $this->id_semestre = htmlspecialchars(strip_tags($this->id_semestre));

        $stmt->bindParam(':id_materia', $this->id_materia);
        $stmt->bindParam(':nombre', $this->nombre);
        $stmt->bindParam(':horas_teoria', $this->horas_teoria);
        $stmt->bindParam(':horas_practica', $this->horas_practica);
        $stmt->bindParam(':id_semestre', $this->id_semestre);

        if($stmt->execute()){
            return true;
    }
    printf("Error: %s. \n", $stmt->error);
    return false;
    }

    public function update(){
        $query = 'UPDATE `materia` SET id_materia = :id_materia, nombre = :nombre, horas_teoria = :horas_teoria, horas_practica = :horas_practica, id_semestre = :id_semestre
                WHERE id = :id';

        $stmt = $this->conn->prepare($query);

        $this->id_materia = htmlspecialchars(strip_tags($this->id_materia));
        $this->nombre = htmlspecialchars(strip_tags($this->nombre));
        $this->horas_teoria = htmlspecialchars(strip_tags($this->horas_teoria));
        $this->horas_practica = htmlspecialchars(strip_tags($this->horas_practica));
        $this->id_semestre = htmlspecialchars(strip_tags($this->id_semestre));
        $this->id = htmlspecialchars(strip_tags($this->id));

        $stmt->bindParam(':id_materia', $this->id_materia);
        $stmt->bindParam(':nombre', $this->nombre);
        $stmt->bindParam(':horas_teoria', $this->horas_teoria);
        $stmt->bindParam(':horas_practica', $this->horas_practica);
        $stmt->bindParam(':id_semestre', $this->id_semestre);
        $stmt->bindParam(':id', $this->id);

        if($stmt->execute()){
            return true;
        }
        printf("Error: %s. \n", $stmt->error);
        return false;
    }

    public function delete(){
        $query = 'DELETE FROM `materia` WHERE id_materia = :id_materia';

        $stmt = $this->conn->prepare($query);

        $this->id_materia = htmlspecialchars(strip_tags($this->id_materia));

        $stmt->bindParam(':id_materia', $this->id_materia);

        if($stmt->execute()){
            return true;
        }
        printf("Error: %s. \n", $stmt->error);
        return false;
    }

}

#https://itleon-my.sharepoint.com/:w:/g/personal/16240559_leon_tecnm_mx/EZXldjsMGS9IqShk5zRmtyMBPdoLihODJI4lNnQrKrl_Ew?e=TbmqSb