<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ: Docker & Docker Swarm</title>
    <link rel="stylesheet" href="style.css">

    <!--<link href="node_modules/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<div class="text-center"><h1>FAQ von Docker & Docker Swarm</h1></div>

<?php
$conn = new mysqli('mariadb', 'student', 'student123');

$sql = 'SELECT id, frage, antwort FROM faq_database.faq;';

if ($result = $conn->query($sql)) {
    while ($data = $result->fetch_object()) {
        $faq[] = $data;
    }
}


// Tabelle erzeugen
echo "<div class='m-3' id='cliste'><table class='table table-bordered table-hover'>";
echo "<thead><tr><th>ID</th><th>Frage</th><th>Antwort</th>";
echo "</tr></thead><tbody>";
foreach ($faq as $s) {
    echo "<tr><td>";
    echo $s->id . "</td><td>" . $s->frage . "</td><td> " . $s->antwort;
    echo "</td>";
}
echo "</tbody></tr></table>";
?>

</body>
</html>
