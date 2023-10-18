<?php 
include("myphp/function.php");
$result = getData("articles", $conn);
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

    
    <link rel="stylesheet" href="tools/style.css" />

    <title>Syahnas Blog Team</title>
</head>
<body>
    <?php include("myphp/inc/navbar.php") ?>

    <!----- Header ----->
    <div class="header vh-100 d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 mx-auto text-center">
                    <h1 class=""><b>Welcome to <span>Syahnas</span> 'site</b></h1>
                    <p class="my-3">
                        Visit us and get more information. <br>
                        on various categories around the world.
                    </p>
                    <a href="#" class="button btn btn-warning px-5">Visit Here</a> &emsp;
                    <a href="#" class="btn btn-outline-light px-5">About Us</a>
                </div>
            </div>
        </div>
    </div>


    <!-----  ----->
    <section class="py-5">
        <div class="container">
            <div class="row mb-5">
                <div class="main-hr col-md-8 mx-auto text-center">
                    <h6 class="text-primary"></h6>
                    <h1>Mengapa Harus Disini?</h1>
                    <p>Tempat edukasi, informasi hingga berita lengkap untukmu.</p>
                </div>
            </div>
            <div class="container">
                <div class="row mx-auto text-center main-check">
                    <div class="col">
                        <img src="image/check.png">
                        <h4>Terpercaya</h4>
                    </div>
                    <div class="col">
                        <img src="image/check.png">
                        <h4>Akurat</h4>
                    </div>
                    <div class="col">
                        <img src="image/check.png">
                        <h4>Aktual</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- BLOG -->
    <section class="generic py-5 pr-5">
        <div class="bg-light">
            <div class="container">
                <div class="row mb-5">
                    <div class="main-hr col-md-8 mx-auto text-center">
                        <h6 class="text-primary"></h6>
                        <h1>Artikel Terbaru dari Blog</h1>
                        <p>Cari berita mu untuk pengetahuan hari ini diseluruh dunia.</p>
                    </div>
                </div>
                <div class="card py-3">
                    <div class="container">
                        <div class="row">
                          <?php while( $row = mysqli_fetch_assoc($articles)): ?>
                          
                            <div class="col-md-6 col-lg-4">
                                <div class="card bg-light border-0">
                                    <img class="card-img-top" src="<?= $row["thumbnail"]?> ">
                                    <div class="card-body ps-3">
                                        <h5 class="card-tittle lead mb-4">
                                            <b><?= $row["title"]?> </b>
                                        </h5>
                                        <h6 class="card-name">
                                            <img src="image/logouser.png" style="height : 30px; margin-right :30px;">
                                            <?= getUserById($row["user_id"], $conn)?>
                                        </h6>
                                        <p class="card-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;" >
                                            <?= $row["content"]?>
                                        </p>
                                        <div method="get">
                                            <a name="" href="post.php?id=<?= $row["id"]?> "class="btn btn-warning">Read more...</a>
                                        </div>
                                        <ul class="list-inline">
                                            <li class="list-inline-item">
                                                <small class="card-text text-muted"><br>
                                                    <p class="logodate">
                                                      <img src="image/logocategory.png" style="height : 30px; margin-right :30px;"> <?= getCategoryById($row["categories_id"], $conn)?>
                                                    </p>
                                                    <p class="logodate">
                                                      <img src="image/logodate1.png" style="height : 30px; margin-right :30px;"> <?= $row ["created_at"] ?>
                                                    </p>
                                                </small>
                                        </ul> 
                                    </div>
                                </div>
                            </div>
                          <?php endwhile; ?>
                        </div>  
                    </div>
                </div>
    </section>


    <!----- Footer ----->
    <?php include("myphp/inc/footer.php"); ?>       

    <script src="https://kit.fontawesome.com/e1569432fe.js" crossorigin="anonymous"></script>
</body>
</html>