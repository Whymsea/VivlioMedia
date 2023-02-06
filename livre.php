
<?php 
require_once ("Connexion.php");
?>

<form action="livre.php" method="post">
<section id="Livre">
            Nom :<div class="Nom_Livre"><input type="text" size="50" name="Nom_Livre"  required></div>
            <br>
            Genre :<div class="Genre_Livre"><input type="text" size="50" name="Genre_Livre" required></div>
            <br>
            Theme :<div class="Theme_Livre"><input type="text"  size="50" name="Theme_Livre" required></div>
            <br>
            Nombre de page :<div class="Nmbre_Page_Livre"><input type="text" name="Nmbre_Page_Livre" required></div>
            <br>
            Annez de parution :<div class="Annee_Parution_Livre"><input type="date" name="Annee_Parution_Livre" required></div>
            <br>
            Langue :<div class="Langue_Livre"><input type="text" name="Langue_Livre" size="20" required></div>
            <br>
            Auteur :<div class="Auteur_Livre"><input type="text" name="Auteur_Livre" size="70" required></div>
            <br>
            Emprunt :<div class="Emprunt_Livre"><input type="text" name="Emprunt_Livre" size="70" required></div>
            <br> E
            Sommaire :<div class="Sommaire_Livre"><input type="text" size="1200" name="Sommaire_Livre" required></div>
            </section>
            <div class ="bouton">
              <input type="submit" value="Valider">
            </div>
            
</form>

<?php
if(isset($_POST['Nmbre_Page_Livre']))
{
$req = $db->prepare('INSERT INTO livre (Nom_Livre, Genre_Livre, Theme_Livre, Nmbre_Page_Livre, Annee_Parution_Livre, Langue_Livre, Auteur_Livre, Emprunt_Livre, Sommaire_Livre)
VALUES( ?, ?, ?, ?, ?, ?, ?, ?, ?)');
$req->execute(array( $_POST['Nom_Livre'],
$_POST['Genre_Livre'], 
$_POST['Theme_Livre'], 
$_POST['Nmbre_Page_Livre'],
$_POST['Annee_Parution_Livre'],
$_POST['Langue_Livre'],
$_POST['Auteur_Livre'],
$_POST['Emprunt_Livre'],
$_POST['Sommaire_Livre']
));
}
?>
</body>
</html>