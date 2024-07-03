<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>মৌসুমী ফসল</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 20px;
        }

        h1 {
            margin-top: 20px;
            text-align: center;
        }

        ul {
            list-style-type: none;
            padding: 0;
            text-align: center;
        }

        li {
            font-size: 18px;
            margin: 10px;
        }

        .crop-card {
            border: 1px solid #ccc;
            margin: 10px;
            padding: 10px;
            text-align: center;
            background-color: #fff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }

        .crop-card img {
            max-width:50%;
            height: small;
        }
    </style>
</head>
<body>
<body>
   
   <!-- header section starts  -->
   <?php include 'user_header.php'; ?>
   <!-- header section ends -->
   
   <div class="heading">
      <p><a href="home.php">হোম</a> <span> / মৌসুমী ফসল</span></p>
   </div>
    
    <div class="container">
        <?php
        // Database connection
        $mysqli = new mysqli("localhost", 'root', "", "tup_db");
        if ($mysqli->connect_error) {
            die("Connection failed: " . $mysqli->connect_error);
        }

        // Define the target season for recommendations
        $targetSeason = "Summer"; // You can change this to the desired season

        
        $query = "SELECT `name`, `image` FROM crops WHERE `season` = ? LIMIT 4";
        $stmt = $mysqli->prepare($query);
        $stmt->bind_param("s", $targetSeason);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            echo "<h1>মৌসুমী ফসল: $targetSeason</h1>";
            while ($row = $result->fetch_assoc()) {
                echo "<div class='crop-card'>";
                echo "<img src='uploaded_img/{$row['image']}'>";
                echo "<h2>{$row['name']}</h2>";
                echo "</div>";
            }
        } else {
            echo "<p> $targetSeason.</p>";
        }

        // Query to select top 4 recommended crops for other seasons
        $query = "SELECT DISTINCT `season` FROM crops WHERE `season` != ? LIMIT 5";
        $stmt = $mysqli->prepare($query);
        $stmt->bind_param("s", $targetSeason);
        $stmt->execute();
        $result = $stmt->get_result();

        // Display top 4 crops for other seasons
        while ($row = $result->fetch_assoc()) {
            $otherSeason = $row['season'];
            echo "<h1>মৌসুমী ফসল: $otherSeason</h1>";
            $query = "SELECT `name`, `image` FROM crops WHERE `season` = ? LIMIT 5";
            $stmt = $mysqli->prepare($query);
            $stmt->bind_param("s", $otherSeason);
            $stmt->execute();
            $otherResult = $stmt->get_result();
            
            while ($cropRow = $otherResult->fetch_assoc()) {
                echo "<div class='crop-card'>";
                echo "<img src='uploaded_img/{$cropRow['image']}'>";
                echo "<h2>{$cropRow['name']}</h2>";
                echo "</div>";
            }
        }

        // Close the database connection
        $stmt->close();
        $mysqli->close();
        ?>
    </div>
    

</body>
</html>
