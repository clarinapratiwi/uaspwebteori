<?php
    include 'koneksi.php';

    $id = $_POST['id'];
    $title = $_POST['title'];
    $ket = $_POST['ket'];
    $harga = $_POST['harga'];
    

    mysqli_query($db,"update post set title='$title',ket='$ket',harga='$harga' where id='$id'");

    header("location:admin.php");
?>