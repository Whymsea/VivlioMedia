<?php

// Connexion à la base de données
$host = 'localhost'; /*** mysql hostname ***/
$username = 'root'; /*** mysql username ***/
$password = 'root'; /*** mysql password ***/
$dbname = 'vivi'; /*** mysql database ***/
$conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);

// Vérification si un terme de recherche a été soumis
if (isset($_GET['q'])) {
    $search = htmlspecialchars($_GET['q']);
    
    // Requête pour récupérer les résultats de la recherche
    $query = "SELECT * FROM livre WHERE Nom_livre, Genre_Livre, Auteur_Livre LIKE '%$search%' UNION SELECT * FROM film WHERE Nom_Film, Genre_Film, Realisateurs_Film LIKE '%$search%'";
    $stmt = $conn->prepare($query);
    $stmt->execute();
    $resultats = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    // Conversion des résultats en JSON
    $json = json_encode($resultats, JSON_UNESCAPED_UNICODE);
    echo $json;
}
?>
<script>
    // Récupération de la balise d'input pour la barre de recherche
let searchInput = document.getElementById("search-input");

// Écouteur d'événement pour la saisie dans la barre de recherche
searchInput.addEventListener("input", function() {
    // Récupération du terme de recherche
    let search = searchInput.value;
    
    // Requête AJAX pour récupérer les résultats de la recherche
    let xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            let resultats = JSON.parse(this.responseText);
            
            // Affichage des résultats sous forme de propositions
            let propositions = document.getElementById("propositions");
            propositions.innerHTML = "";
            for (let i = 0; i < resultats.length; i++) {
                let proposition = document.createElement("div");
                proposition.textContent = resultats[i].titre;
                propositions.appendChild(proposition);
            }
        }
    };
    xhr.open("GET", "recherche.php?q=" + search, true);
    xhr.send();
});

</script>

<form action="" method="GET">
  <input type="text" name="q" placeholder="Rechercher...">
  <button type="submit">Rechercher</button>
</form>
