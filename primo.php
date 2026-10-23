<!DOCTYPE html>
<html lang="it">
<head>
    <title>Esercizio numero 1A</title>
</head>
<body>

    <h1>Generazione dinamica di una tabella html</h1>

    <?php
    echo '<table border="1">';
    	for($i=1; $i <= 10; $i++) {
		echo '<tr>';
		echo '<td>'.$i.'</td>';
		for($e=1; $e <= 9; $e++) {
			echo '<td>'.($i * ($e+1)).'</td>';
		}
		echo '</tr>';
	}
    echo '</table>';
    ?>

</body>
</html>
