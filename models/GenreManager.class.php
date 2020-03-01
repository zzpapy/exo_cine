<?php 
    class GenreManager{
        private $_db; // Instance de PDO
  
        public function __construct($db)
        {
          $this->setDb($db);
        }
        
        public function add($data)
        {             
            $query = $this->_db->prepare( 'INSERT INTO genre (nom) VALUES( :nom) ');
            $query->bindParam(':nom', $data["role"]);
            $query->execute();
            // var_dump($data);die;
        }
        public function findAll()
        {             
            $query = $this->_db->prepare( 'SELECT * FROM genre ');
            $query->execute();

            return $query->fetchAll();
        }
        public function setDb(PDO $db)
        {
            $this->_db = $db;
        }
        
    }
?>