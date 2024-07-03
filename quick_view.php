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
   <title>Crop details</details></title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>

<body>

   <?php include 'user_header.php'; ?>

   <section class="quick-view">

      <h1 class="title">আরো বিস্তারিত জানুন</h1>

      <?php
      $id = $_GET['id'];
      $select_crops = $conn->prepare("SELECT * FROM crops WHERE id = ?");
      $select_crops->execute([$id]);
      if ($select_crops->rowCount() > 0) {
         while ($fetch_crops = $select_crops->fetch(PDO::FETCH_ASSOC)) {
      ?>
            <form action="" method="post" class="box">
            <div class="name"><?= $fetch_crops['name']; ?></div>
               <img src="uploaded_img/<?= $fetch_crops['image']; ?>" alt="">
               <a href="category.php?category=<?= $fetch_crops['category']; ?>" class="cat"><?= $fetch_crops['category']; ?></a>
                  <div class="productivity"><span></span><?= $fetch_crops['productivity']; ?></div>
                  <div class="desc"><?= $fetch_crops['desc']; ?></div>
            </form>

      <?php
         }
      } 
      ?>

   </section>

   <?php include 'footer.php'; ?>


   <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

   <!-- custom js file link  -->
   <script src="js/script.js"></script>


</body>

</html>