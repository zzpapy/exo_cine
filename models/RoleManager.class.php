<?php 
    class RoleManager{
        private $_db; // Instance de PDO
  
        public function __construct($db)
        {
          $this->setDb($db);
        }
        
        public function add($data)
        {             
            $query = $this->_db->prepare( 'INSERT INTO role (nom) VALUES( :nom) ');
            $query->bindParam(':nom', $data["role"]);
            $query->execute();
            // var_dump($data);die;
            return $this;
        }
        public function setDb(PDO $db)
        {
            $this->_db = $db;
        }
        
    }
?>