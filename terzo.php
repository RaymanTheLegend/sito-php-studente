<!DOCTYPE html>
<html lang="it">
<head>
	<title>Esercizio numero 1C</title>
</head>
<body>
	<style>body {font-family: monospace;}</style>
	<h1>Esercizio di creazione di triangoli con asterischi</h1>

	<?php
	echo '<br>'."(a)";
	for($i = 1; $i <= 10; $i++){
		echo '<br>'.str_repeat('*', $i);
	}
	echo '<br>'."(b)";
	for($i = 10; $i >= 1; $i--){
		echo '<br>'.str_repeat('*', $i);
	}
	echo '<br>'."(c)";
	for($i = 1; $i <= 10; $i++){
		echo '<br>'.str_repeat('&nbsp;', $i).str_repeat('*', 10 - $i);
	}
	echo '<br>'."(d)";
	for($i = 1; $i <= 10; $i++){
		echo '<br>'.str_repeat('&nbsp;', 10 - $i).str_repeat('*', $i);
	}
	?>
</body>
</html>
