<?php
include("myphp/function.php");

$article_id = $_GET["id"];
$result = getArticleById($article_id, $conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="./assets//font-awesome/all.min.css">
    <link rel="stylesheet" href="tools/style.css" />

    <title>Blog Posting</title>
</head>
<body>
    <!----- Navbar ----->
<?php include("myphp/inc/navbar.php");?>

<!----- Postingan Blog ----->
<div class="page-wrapper">

<div class="content clearfix py-4">
    <div class="main-content-wrapper">
        <div class="main-content single">
            <img src="<?= $result["thumbnail"] ?>" class="main-thumbnail img-fluid center" alt="thumbnail">
            <div class="main-hr2 col-md-8 ">
              <h6 class=""></h6>
              <h1><?= $result["title"]?> </h1>
            </div>
            <br>
            <div class="post-content main-postingan py-4">
                <p style="text-align: justify;">
                    <?= $result["content"]?>
                </p>
            </div>
            <div class="align-text-right"> 
              <br>
              <h6 class="card-name">
                <img src="image/logouser.png" style="height : 30px; margin-right :30px;">
                <?= getUserById($result["user_id"], $conn) ?>
              </h6>
              <h6 class="logodate">
                <img src="image/logocategory.png" style="height : 30px; margin-right :30px;">
                <?= getCategoryById($result["categories_id"], $conn) ?>
              </h6>
              <h6 class="logodate">
                  <img src="image/logodate1.png" style="height : 30px; margin-right :30px;">
                  <?= $result["created_at"]?>
              </h6>
              <div class=" py-3">
                  <a name="" href="index.php" class="btn btn-warning px-3">... Return</a>
              </div>
            </div>
        </div>
    </div>

    <!----- Sidebar Kiri ----->
    <div class="card my-3" style="width: 26rem;">
        <div class="card-body">
          <h2 class="card-title">More Categories</h2>
           <ul class="list-group">
           <?php while( $row = mysqli_fetch_assoc($categories)): ?>
              <li class="list-group-item d-flex justify-content-between align-items-center">
                <?= $row["name"]?>
                <span class="badge bg-warning rounded-pill"><?= $row["id"]?></span>
              </li>
              <?php endwhile; ?>
            </ul>
        </div>
        <div class="form-floating">
            <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
            <label for="floatingTextarea"><h2>Comments</h2></label>
        </div>
        <div class="blog-subscribe">   
   </div>

   
   
</div>
</div>


<!----- Footer ----->
<?php include("myphp/inc/footer.php");?>     

<script src="https://kit.fontawesome.com/e1569432fe.js" crossorigin="anonymous"></script>
</body>
</html>
