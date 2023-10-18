<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="tools/sign.css" />
    <link rel="stylesheet" href="tools/script.js" />
</head>

<body>
    <!----- Navbar ---->
    <?php include("myphp/inc/navbar.php") ?>

    <!----- Log in ----->
    <form action="login.php" method="post">
        <div class="form-body">
            <div class="row">
                <div class="form-holder">
                    <div class="form-content">
                        <div class="form-items">
                            <h3>Log in Today</h3>
                            <p>Selamat datang kembali.</p>
                            <form class="requires-validation" novalidate>

                                <div class="col-md-12">
                                    <input class="form-control" type="email" name="email" placeholder="email account" required value="<?= $email?>">
                                    <div class="valid-feedback">Email field is valid!</div>
                                    <div class="invalid-feedback">Email connot find</div>
                                </div>

                                <div class="col-md-12">
                                    <input class="form-control" type="password" name="password" placeholder="Password"
                                        required value="<?= $_POST["password"]?>">
                                    <div class="valid-feedback">Password field is valid!</div>
                                    <div class="invalid-feedback">Password invalid</div>
                                </div>

                                <div class="form-button mt-3">
                                    <button id="submit" type="submit" class="btn btn-warning">Log In</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>

</html>