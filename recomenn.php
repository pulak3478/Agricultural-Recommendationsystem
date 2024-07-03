
<?php
// Database connection
$mysqli = new mysqli("localhost", 'root', "", "tup_db");
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>  আমার প্রকল্প </title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  </head>
  
  <style>
	h1 {

  font-family: "Lucida Console", "Courier New", monospace;
			color: mediumseagreen;
			text-align: center;
		}
h2{
	color: mediumseagreen;
			text-align: center;
}


		.warning {
			color: red;
			font-weight: bold;
			text-align: center;
		}
		.container{
		background:#edf2f7;
		font-weight: bold;
		padding-bottom:150px;
		border-radius: 25px;
		}

		a{
		font-size: 18px;
		font-family: sans-serif;
		text-decoration: none;
		padding: 4px;
		letter-spacing: 3px;
		transition: all .25s;
		}

		a:hover{
		letter-spacing: 8px;
		}

	</style>

  <body style="background:#BCBBB8">
  	  
  <?php include 'user_header.php';
    ?>
  <div class="container my-3 mt-3">
      <h1 class="text-success">শস্যফলনের পরামর্শদাতা <span class="text-success">🌾</span></h1>

      <form  method="POST" action="">
          <div class="row">
              <div class="col-md-4">
					<label for="Nitrogen">নাইট্রোজেন </label>
					<input type="number" id="nitrogen" name="nitrogen" placeholder="নাইট্রোজেনের পরিমাণ লিখুন" class="form-control" required >
				
				</div>
               <div class="col-md-4">
					<label for="Phosporus">ফসফরাস </label>
					<input type="number" id="phosphorus" name="phosphorus" placeholder="ফসফরাসের পরিমাণ লিখুন" class="form-control" required >
				</div>
				<div class="col-md-4">
					<label for="Potassium">পটাশিয়াম</label>
					<input type="number" id="potassium" name="potassium" placeholder="পটাশিয়ামের পরিমাণ লিখুন" class="form-control" required >
				</div>
          </div>

          <div class="row mt-4">
				<div class="col-md-4">
					<label for="Temperature">তাপমাত্রা </label>
					<input type="number" id="temperature" name="temperature" placeholder="সেলসিয়াস এককে তাপমাত্রা লিখুন" class="form-control" required>
				</div>
				<div class="col-md-4">
					<label for="Humidity">বাতাসে আদ্রতা </label>
					<input type="number"  id="humidity" name="humidity" placeholder="আদ্রতার পরিমাণ লিখুন" class="form-control" required>
				</div>
				<div class="col-md-4">
					<label for="pH">হাইড্রোজেন আয়নের ঘনত্ব</label>
					<input type="number" id="ph" name="ph" placeholder="হাইড্রোজেন আয়নের ঘনত্বের পরিমাণ লিখুন" class="form-control" required >
				</div>
			</div>

          <div class="row mt-4">
				<div class="col-md-4">
					<label for="Rainfall">বৃষ্টিপাত </label>
					<input type="number"  id="rainfall" name="rainfall" placeholder="বৃষ্টিপাতের মাত্রা লিখুন মিলিমিটারে" class="form-control" required>
				</div>
			</div>
			<div class="row mt-4">
				<div class="col-md-4">
			<label for="soil">Select Soil:</label>
			<select name="soil" id="soil">
            <option value='কাঁদামাটি'>কাঁদামাটি</option>
            <option value='বেলে মাটি'>বেলে মাটি</option>
			<option value='পলি মাটি'>পলি মাটি</option>
            <option value='দোআঁশ মাটি'>দোআঁশ মাটি</option>
        </select>
		</div>
			</div>
			<div class="row mt-4">
				<div class="col-md-4">
			<label for="season">Select Season:</label>
        <select name="season" id="season">
            <option value='গ্রীষ্ম'>গ্রীষ্ম</option>
            <option value='শরৎ'>শরৎ </option>
			<option value='শীতকাল'>শীতকাল</option>
            <option value='সারাবছর'>সারাবছর</option>
			
        </select>
		</div>
			</div>
           <div class="row mt-4">
           <div class="col-md-12 text-center">	
		   <input type="submit" name="submit" class="btn btn-success" value="শস্যফলনের পরামর্শ পেতে এখানে ক্লিক করুন">
			</div>
			</div>
      </form>
	  <br>
	  <br>
<?php
if (isset($_POST['submit'])){
	$nitrogen = $_POST['nitrogen'];
    $phosphorus = $_POST['phosphorus'];
    $potassium = $_POST['potassium'];
	$temperature = $_POST['temperature'];
    $humidity = $_POST['humidity'];
    $ph =$_POST['ph'];
    $rainfall = $_POST['rainfall'];
    $soil = $_POST['soil'];
    $season = $_POST['season'];


// Query the database for recommended crops
$query = "SELECT * FROM rec
WHERE nitrogen <= $nitrogen
AND phosphorus <= $phosphorus
AND potassium <= $potassium
AND temperature ='$temperature'
AND humidity ='$humidity'
AND ph ='$ph'
AND rainfall ='$rainfall'
AND soil ='$soil'
AND season ='$season'
";


$result = $mysqli->query($query);

if ($result) {
    $recommendedCrops = array(); // Initialize an empty array to store recommended crops

    while ($row = $result->fetch_assoc()) {
        $recommendedCrops[] = $row['label']; // Add each recommended crop to the array
    }

    // Free the result set
    $result->free();

    if (!empty($recommendedCrops)) {
        echo "<h2 class='mt-4'>Recommended Crops</h2>";
        echo "<ul>"; // Start an unordered list to display the crops
        foreach ($recommendedCrops as $crop) {
            echo "<li class='mt-2' style='text-align: center;'>$crop</li>"; // Display each crop in a list item
        }
        echo "</ul>"; // Close the unordered list
    } else {
        echo "<p class='mt-4 text-danger'>No crops match your preferences.</p>";
    }
} else {
    echo "Error executing the query: " . $mysqli->error;
}
}
$mysqli->close();
?>
</div>
  </body>

</html>
