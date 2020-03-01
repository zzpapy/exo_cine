<?php 
    class RealisateurManager{
        private $_db; // Instance de PDO
  
        public function __construct($db)
        {
          $this->setDb($db);
        }
        
        public function add($data)
        {             
            $query = $this->_db->prepare( 'INSERT INTO realisateur (nom,prenom,date) VALUES( :nom, :prenom, :date) ');
            $query->execute($data);
        }
        public function findAll()
        {             
            $query = $this->_db->prepare( 'SELECT * FROM realisateur ');
            $query->execute();

            return $query->fetchAll();
        }
        public function findById($id)
        {             
            $query = $this->_db->prepare( 'SELECT * FROM realisateur WHERE id ='.$id);
            $query->execute();

            return $query->fetchAll();
        }
        public function updateFilm($id,$film)
        { 
            // $film = implode("','",$film);
            $query = $this->_db->prepare( 'UPDATE realisateur SET film = '.$film.'  WHERE id='.$id);
            $query->execute();

            // return $query->fetchAll();
        }
        public function setDb(PDO $db)
        {
            $this->_db = $db;
        }
        
    }
?>