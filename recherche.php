<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<style>
		.suggestion {
		display: block;
		padding: 5px;
		text-decoration: none;
		color: black;
		width: 310px;
		box-sizing: border-box;
		}
		
		.suggestion:hover {
			background-color: #ddd;
		}
	</style>
</head>
<body>
	<input type="text" id="search-box" placeholder="Rechercher...">
	<div id="search-results"></div>

	<script>
		$(document).ready(function() {
			// Lorsque l'utilisateur saisit du texte dans la barre de recherche
			$("#search-box").keyup(function() {
				// Récupération de la valeur saisie dans la barre de recherche
				var search = $(this).val().trim();
				// Si la valeur saisie contient au moins 2 caractères
				if (search.length >= 2) {
					// Envoi d'une requête AJAX au script PHP pour récupérer les résultats de la recherche
					$.ajax({
						url: "recherche_traitement.php",
						type: "POST",
						data: {
							search: search
						},
						dataType: "json",
						success: function(results) {
						// Affichage des résultats de la recherche
						var html = "";
						var suggestionsList = document.getElementById("search-results");
						for (let i = 0; i < results.length; i++) {
							const suggestion = document.createElement("a"); // création d'un lien
							suggestion.href = results[i].url; // ajout de l'url au lien
							suggestion.classList.add("suggestion"); // ajout de la classe suggestion au lien
							suggestion.innerHTML = " (" + results[i].type + ")" + results[i].nom; // ajout du nom et du type de la suggestion comme texte du lien
							suggestionsList.appendChild(suggestion); // ajout du lien à la liste des suggestions
						}
					}
					});
				} else {
					// Effacement des résultats de la recherche
					$("#search-results").html("");
				}
			});
		});
	</script>
</body>
</html>
