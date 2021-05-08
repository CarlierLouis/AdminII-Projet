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
        
        if (isset($_POST['submit'])) {
     
        $nom = $_POST["nom"];
	    $prix = $_POST["prix"]; 
      
        $sql = "INSERT INTO jouets (nom, prix) VALUES (?,?)";
        $stmt= $db->prepare($sql);
        $stmt->bind_param("si", $nom, $prix);
        $stmt->execute();
            
        } 
      
        mysqli_close($db);
        
    ?>
      
      <div style="float:right">
          <a>Ajouter un objets au catalogue</a><br><br>
          <form method="POST">  
              nom:<br>
              <input type="text" name="nom"><br>
              prix:<br>
              <input type="number" name="prix"><br>
              <br><br>
              <input type="submit" name="submit" value="Envoyer">
          </form>
      </div>
    
  </body>

</html>
