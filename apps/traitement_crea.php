<?php    
	if (isset($_POST['crea']) && $_GET['page'] == 'crea'){
        if($_POST["crea"]=="acteur"){
            $manager= new ActeurManager($db);
        }
        elseif($_POST["crea"]=="real"){
            $manager= new RealisateurManager($db);
            // var_dump($_POST["crea"]);die;
        }
        $nom = htmlentities(htmlspecialchars($_POST["nom"], ENT_QUOTES, 'UTF-8'));
        $prenom = htmlentities(htmlspecialchars($_POST["prenom"], ENT_QUOTES, 'UTF-8'));
        $date = new DateTime($_POST["date"]);
        $date = $date->format('Y-m-d');
        $data = ['nom'=>$nom,'prenom'=>$prenom,'date'=>$date];
        $manager->add($data);	
        
    }
    if (isset($_POST['role']) && $_GET['page'] == 'crea'){
        $manager= new RoleManager($db);
        $nom = htmlentities(htmlspecialchars($_POST["role"], ENT_QUOTES, 'UTF-8'));
        $data = ['role'=>$nom];
        $object = $manager->add($data);
        // var_dump(get_object_vars($object));die;
    }
    if (isset($_POST['genre']) && $_GET['page'] == 'crea'){
        $manager= new GenreManager($db);
        $nom = htmlentities(htmlspecialchars($_POST["genre"], ENT_QUOTES, 'UTF-8'));
        $data = ['role'=>$nom];
        $manager->add($data);
        // var_dump($data);die;
    }
    if (isset($_POST['titre']) && $_GET['page'] == 'crea'){
        
        $titre = htmlentities(htmlspecialchars($_POST["titre"], ENT_QUOTES, 'UTF-8'));
        $sortie = new DateTime($_POST["sortie"]);
        $sortie = $sortie->format('Y-m-d');
        $duree = $_POST["duree"];
        $synopsis = htmlentities(htmlspecialchars($_POST["synopsis"], ENT_QUOTES, 'UTF-8'));
        $realManager = new RealisateurManager($db);
        $real = $realManager->findById($_POST["real"]);
        $real = $real[0]["id"];
        $genre = htmlentities(htmlspecialchars($_POST["genre"], ENT_QUOTES, 'UTF-8'));
        $data = ['titre'=>$titre,'sortie'=>$sortie,'duree'=>$duree,'synopsis'=>$synopsis,'realisateur'=>$real,'genre'=>$genre];
        $manager= new FilmManager($db);
        $film = $manager->add($data);
        var_dump($film);
        $realManager->updateFilm($_POST["real"],$film);
        
    }
    
?>