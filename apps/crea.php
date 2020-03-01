



<section class="crea">
    <h1>Créer un réalisateur ou un acteur</h1>
    <form method="POST">
        <input type="radio" id="acteur" name="crea" value="acteur">
        <label for="acteur">acteur</label>
        <input type="radio" id="realisateur" name="crea" value="real">
        <label for="realisateur">réalisateur</label>
        <label for="">Nom</label>
        <input type="text" name="nom"   value="">
        <label for="">Prenom</label>
        <input type="text" name="prenom"  value="">
        <label for="">date de naissance</label>
        <input type="text" name="date" value="">
        <input type="submit" name="" value="créer">
    </form>
    <h1>Créer un role</h1>
    <form method="POST">
        
        <input type="text" name="role" value="">
        <input type="submit" name="" value="créer">
    </form>
    <h1>Créer un genre</h1>
    <form method="POST">
        
        <input type="text" name="genre" value="">
        <input type="submit" name="" value="créer">
    </form>
    <h1>Créer un Film</h1>
    <form method="POST">
        <label for="">Titre</label>
        <input type="text" name="titre"   value="">
        <label for="">sortie</label>
        <input type="date" name="sortie"   value="">
        <label for="">duree</label>
        <input type="number" name="duree"  value="">
        <label for="">synopsis</label>
        <input type="text" name="synopsis" value="">
        <label for="">realisateur</label>
        <select name="real" id="">
            <option value="">choisir un réalisateur</option>
            <?php
                require 'realisateur.php';            
            ?>
        </select>
        <label for="">genre</label>
        <input type="text" name="genre" value="">
        <input type="submit" name="" value="créer">
    </form>
</section>