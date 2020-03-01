<?php 
function chargerClasse($classe)
{
	require 'models/' .$classe .'.class.php'; // On inclut la classe correspondante au paramètre passé.
}
	
	spl_autoload_register('chargerClasse');
	$db = new PDO('mysql:host=localhost;dbname=cinema', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING); // On émet une alerte à chaque fois qu'une requête a échoué.
    
$page ="home";
    $access = ["home","crea"];
	$accessUser = [];
	$accessAdmin = [];
	if(isset($_SESSION["admin"]) && $_SESSION['admin'] == 1)
	{
		if(isset($_GET["page"]) && in_array($_GET["page"], $accessAdmin))
		{
			$page = $_GET["page"];
		}
		else{
			$page='accueil';
		}
	}	
	else if(isset($_SESSION['user']))
	{
		if(isset($_GET["page"]) && in_array($_GET["page"], $accessUser))
		{
			$page = $_GET["page"];
		}
	}
	else
	{
		if(isset($_GET["page"]) && in_array($_GET["page"], $access))
		{
			$page = $_GET["page"];
		} 
	}
	$traitementList = ["crea"=>"crea"];
	// var_dump(isset($traitementList[$page]));

	
	if(isset($traitementList[$page]))
	{
		require("apps/traitement_".$traitementList[$page].".php");
	}
	require'apps/skel.php'; 
$real= new Realisateur("muller","jean","20-03-1969");
$real1= new Realisateur("tchan","jacky","21-11-1980");
$real2= new Realisateur("Scorzese","Martin","20-03-1969");

$acteur= new Acteur("capone","al","14-12-1973S");
$acteur1= new Acteur("toto","tata","14-12-1973S");

$role = new Role("jamesbond");
$role1 = new Role("ouioui"); 

$genre = new Genre("policier");
$genre1 = new Genre("aventure");
$genre2 = new Genre("suspens");


$film = new Film("titanic","2000",100,"naufrage", $real,$genre);
$film1 = new Film("le chat","12-12-1989",90,"histoire d'un chat",$real,$genre);
$film2 = new Film("les affranchis","12-12-1989",120,"c'est l'histoire d'un mec",$real2,$genre2);
$casting = new Casting($film,$acteur,$role);
$casting1 = new Casting($film,$acteur1,$role1);
$casting2 = new Casting($film1,$acteur,$role);
echo $real -> affichFilm();
echo $acteur -> affichFilm();
echo $film2 -> affichFilm();
echo $acteur->affichRole();
echo $role->affichActeurs();
echo $genre->affichFilmGenre();
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <a href=""></a>
</body>
</html>