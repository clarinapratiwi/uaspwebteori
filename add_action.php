<?php
include 'koneksi.php';
 if (isset($_POST['simpan']))
 {
 	$title = $_POST['title'];
 	$ket = $_POST['ket'];
 	$harga = $_POST['harga'];
 	$fileName = $_FILES['foto']['name'];
 	$source = $_FILES['foto']['tmp_name'];
 	$folder = './images/';
 	move_uploaded_file($source, $folder.$fileName);

	$insert = mysqli_query($db, "insert into post values ('', '$title', '$ket', '$harga', '$fileName') ");
	if($insert)
	{
		header("location:admin.php");
	}
	else
	{
		echo 'Gagal Upload';
		header("location:add.php");
	}

  //$sql = "insert into post (title,ket,harga,gambar) values ('".$_POST['title']."','".$_POST['ket']."','".$_POST['harga']."','$fileName')";
 // mysql_query($sql);
  // Simpan di Folder Gambar
  //move_uploaded_file($_FILES['foto']['tmp_name'], "images/".$_FILES['foto']['name']);
 // echo"<script>alert('Gambar Berhasil diupload !');history.go(-1);</script>"; 
 // header("location:admin.php");
 } 

?>