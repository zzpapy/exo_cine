<?php 
    $manager= new GenreManager($db);
    $listReal = $manager->findAll();
    foreach ($listReal as $key => $value) {
        echo '<option value="'.$value["id"].'">'.$value["nom"].'</option>';
        var_dump($value["id"]);
    }
?>