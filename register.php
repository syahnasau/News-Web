<?php 

require('myphp/function.php');
require('myphp/connect.php');

if( isset($_POST['register-btn'])) {

    if(registrasi($_POST) > 0) {
        echo "<script> alert('Sign Up Succes!'); </script>"; 
    } else {
			echo mysqli_error($conn);
		}
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="tools/sign.css" />
    <link rel="stylesheet" href="tools/script.js" />
</head>

<body>
    <?php include("myphp/inc/navbar.php") ?>

    <!----- Register/Sign Up ----->
    <form action="register.php" method="post">
        <div class="form-body">
            <div class="row">
                <div class="form-holder">
                    <div class="form-content">
                        <div class="form-items">
                            <h3>Register Today</h3>
                            <p>Isi datamu dengan benar.</p>
                            <form class="requires-validation" novalidate>

                                <div class="col-md-12">
                                    <input class="text-input" type="text" name="name" placeholder="Full Name" id="name"required>
                                    <div class="valid-feedback">Username field is valid!</div>
                                    <div class="invalid-feedback">Username field cannot be blank!</div>
                                </div>

                                <div class="col-md-12">
                                    <input class="form-control" type="email" name="email" placeholder="E-mail Address"required>
                                    <div class="valid-feedback">Email field is valid!</div>
                                    <div class="invalid-feedback">Email field cannot be blank!</div>
                                </div>

                                <div class="col-md-12">
                                    <input class="form-control" type="text" name="name" placeholder="Username Account"required>
                                    <div class="valid-feedback">Username field is valid!</div>
                                    <div class="invalid-feedback">Username field cannot be blank!</div>
                                </div>


                                <div class="col-md-12">
                                    <input class="form-control" type="password" name="password" placeholder="Password"required>
                                    <div class="valid-feedback">Password field is valid!</div>
                                    <div class="invalid-feedback">Password field cannot be blank!</div>
                                </div>

                                <div class="form-check mt-3" >
                                    <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                                    <label class="form-check-label">I confirm that all data are correct</label>
                                    <div class="invalid-feedback">Please confirm that the entered data are all correct!
                                    </div>
                                </div>


                                <div class="form-button mt-3">
                                    <button id="submit" type="submit" class="btn btn-warning">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


</body>

</html>