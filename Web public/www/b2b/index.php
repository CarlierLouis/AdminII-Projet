<?php
    $db= mysqli_connect('135.125.101.242:3306','admin','Password123#@!','wt_db') or die('Erreur de connection!');
?>

<html>
  <head>
    <meta charset = "UTF-8">
    <title>Site Web interne WoddyToys</title>
  </head>
  
  <body>
    <h1>Site Web interne WoddyToys</h1>
    
    <?php
        $query = "SELECT * FROM jouets";
        mysqli_query($db, $query) or die('erreur');
        $affichage = mysqli_query($db, $query);
        
        while ($row = mysqli_fetch_array($affichage)) {
            echo $row['id'] . ': ' . $row['nom'] . ' ' . $row['prix'] . ' <br />';
        }
    ?>
    
  </body>

</html>
