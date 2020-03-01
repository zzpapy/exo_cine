<?php 
    class FilmManager{
        private $_db; // Instance de PDO
  
        public function __construct($db)
        {
          $this->setDb($db);
        }
        public function getId(){
            return $this->id;
        }
        public function add($data)
        {
            $query = $this->_db->prepare( 'INSERT INTO film (titre,sortie,duree,synopsis,realisateur,genre) VALUES( :titre,:sortie,:duree,:synopsis,:realisateur,:genre) ');
            $query->execute($data);
            $id = $this->_db->lastInsertId();
            // var_dump($id);die;
            return $id;
        }
        public function setDb(PDO $db)
        {
            $this->_db = $db;
        }
        
    }
?>