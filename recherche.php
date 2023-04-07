<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
							$.each(results, function(index, item) {
								html += "<div>" + item.type + " : " + item.nom + "</div>";
							});
							$("#search-results").html(html);
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
