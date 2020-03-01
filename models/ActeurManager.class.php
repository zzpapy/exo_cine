<?php 
    class ActeurManager{
        private $_db; // Instance de PDO
  
        public function __construct($db)
        {
          $this->setDb($db);
        }
        
        public function add($data)
        {             
            $query = $this->_db->prepare( 'INSERT INTO acteur (nom,prenom,date) VALUES( :nom, :prenom, :date) ');
            $query->execute($data);
        }
        public function setDb(PDO $db)
        {
            $this->_db = $db;
        }
        
    }
?>