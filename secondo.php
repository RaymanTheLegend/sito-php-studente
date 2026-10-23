<!DOCTYPE html>
<html lang="it">
<head>
	<title>Esercizio numero 1B</title>
</head>
<body>

	<h1>Esercizio sul saluto in base all'orario</h1>

<?php
$today = new DateTime("now", new DateTimeZone('Europe/Rome'));
$ora = $today->format('H');
if($ora >= 8 & $ora < 12){
	$giorno = "Buongiorno";
}else if($ora >= 12 & $ora < 20){
	$giorno = "Buonasera";
}else if(($ora >= 20 & $ora < 24) || ($ora >= 0 & $ora < 8)){
	$giorno = "Buonanotte";
}else{
	$giorno = "Salve";
}
$utente = "Paolo";
echo "\n$giorno $utente, benvenuto nella mia prima pagina PHP";
?>
</body>
</html>
