<?php
declare(strict_types=1);

$nome = 'Samuele';
$messaggio = "Hello World dell'esercizio b.";
?>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Esercizio b — Hello World</title>
</head>
<body>
    <h1><?php echo 'Hello, World!'; ?></h1>
    <p>Studente: <?= htmlspecialchars($nome, ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8') ?></p>
    <p><?= htmlspecialchars($messaggio, ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8') ?></p>
</body>
</html>
