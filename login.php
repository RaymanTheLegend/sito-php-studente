<!DOCTYPE html>
<html lang="it">
<head>
	<title>Esercizio numero 2A</title>
</head>
<body>
	<h3>Controllo credenziali</h3>

<?php
	$usr = $_POST["username"];
	$pwd = $_POST["password"];
	if ($usr != "iafrate.samuele" || $pwd != "password") {
		echo '<h4>'."Attenzione! Nome utente o password sbagliate".'</h4>';
	} else {
		echo '<h4>'."Benvenuto ".$usr.'<br />'."nell'area riservata";
	}
?>
</body>
</html>
