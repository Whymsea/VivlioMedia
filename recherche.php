<!DOCTYPE html>
<html>
<head>
	<title>Recherche de livres et de films</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#search').keyup(function() {
				var query = $(this).val();

				if (query.length >= 2) {
					$.ajax({
						url: 'recherche_traitement.php',
						method: 'POST',
						data: { q: query },
						dataType: 'json',
						success: function(data) {
							$('#results').empty();
							$.each(data, function(i, item) {
								var title = item.type == 'livre' ? item.titre : item.titre_original;
								$('#results').append('<div><a href="' + item.url + '">' + title + '</a></div>');
							});
						},
						error: function(xhr, status, error) {
							console.log(xhr.responseText);
						}
					});
				}
				else {
					$('#results').empty();
				}
			});
		});
	</script>
</head>
<body>
	<h1>Recherche de livres et de films</h1>
	<form method="POST" action="recherche_traitement.php">
		<label for="search">Rechercher:</label>
		<input type="text" id="search" name="search">
	</form>
	<div id="results"></div>
</body>
</html>
