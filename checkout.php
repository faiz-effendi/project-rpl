<?php
  include 'koneksi.php';
  session_start();

  $username = $_SESSION['username'];

  if(empty($_SESSION['username'])){
    header("location: login_page.php?pesan=belum_login");
  }

  $id = $_GET['id'];

  $sql = "DELETE FROM cart WHERE user_id = $id";

  $data = mysqli_query($connect, $sql)or die(mysqli_error($connect));

  if($data){
    header("location: keranjang.php?ket=success");
  } else {
    header("location: keranjang.php?ket=gagal");
  }
?>