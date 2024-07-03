<?php

include 'connect.php';

session_start();

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>শস্য</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<!-- header section starts  -->
<?php include 'user_header.php'; ?>
<!-- header section ends -->

<div class="heading">
   <h3>আমরা এই শস্যগুলো নিয়ে কাজ করি</h3>
   <p><a href="home.php">হোম</a> <span> / শস্য</span></p>
</div>

<!-- menu section starts  -->

<section class="products">
   <div class="box-container">

      <?php
         $select_crops = $conn->prepare("SELECT * FROM crops ");
         $select_crops->execute();
         if($select_crops->rowCount() > 0){
            while($fetch_crops = $select_crops->fetch(PDO::FETCH_ASSOC)){
      ?>
      <form action="" method="post" class="box">
         <input type="hidden" name="id" value="<?= $fetch_crops['id']; ?>">
         <input type="hidden" name="name" value="<?= $fetch_crops['name']; ?>">
         <input type="hidden" name="desc" value="<?= $fetch_crops['desc']; ?>">
         <input type="hidden" name="image" value="<?= $fetch_crops['image']; ?>">
         <a href="quick_view.php?id=<?= $fetch_crops['id']; ?>" class="fas fa-eye"></a>
         <img src="uploaded_img/<?= $fetch_crops['image']; ?>" alt="">
         <a href="category.php?category=<?= $fetch_crops['category']; ?>" class="cat"><?= $fetch_crops['category']; ?></a>
         <div class="name"><?= $fetch_crops['name']; ?></div>

      </form>
      <?php
            }
         }
      ?>

   </div>

</section>


<!-- menu section ends -->
























<!-- footer section starts  -->
<?php include 'footer.php'; ?>
<!-- footer section ends -->








<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>