<?php
class Database{
    private $host = '172.17.0.1:3308';
    private $db_name = 'materias';
    private $db_user = 'juan';
    private $password = ' ';
    private $conn;

    //Conexion
    public function connect(){
        $this->conn = null;
        try{
            $this->conn = new PDO('mysql:host=' . $this->host . ';dbname=' . $this->db_name, $this->db_user, $this->password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }catch(PDOException $e){
            echo "Error en conexion" . $e->getMessage();
        }
        return $this->conn;
    }
}
