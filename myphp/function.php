<?php 
include("myphp/connect.php");

function getData($table_name, $conn){
  $sql = "SELECT * FROM $table_name";
  $result = $conn->query($sql);

  return $result;
}

function getUserById($user_id, $conn){
  $sql = "SELECT * FROM users WHERE id=$user_id";
  $result = $conn->query($sql);
  
  if ($result->num_rows > 0){
    while($row = $result->fetch_assoc()){
      return $row["name"];
    }
  }
}

$categories = mysqli_query ($conn, "SELECT * FROM categories"); 

function getCategoryById ($categories_id, $conn){
  $sql = "SELECT * FROM categories WHERE id=$categories_id";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      return $row["name"];
    }
  }
}

$articles = mysqli_query ($conn, "SELECT * FROM articles"); 
function getArticleById ($article_id, $conn){
  $sql = "SELECT * FROM articles WHERE id=$article_id";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      return $row;
    }
  }
}

/*
function login ($conn)

if (isset($_POST['submit'])) {
$email = $_POST['email'];
$password = ($_POST['password']);

$sql = "SELECT * FROM users WHERE email='$email' AND password='$password'";
$result = mysqli_query($conn, $sql);
if ($result->num_rows > 0) {
$row = mysqli_fetch_assoc($result);
} else {
  echo "<script>alert('Email atau password Anda salah. Silahkan coba lagi!')</script>";
}
}
*/




?>