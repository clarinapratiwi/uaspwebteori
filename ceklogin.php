<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Proses Login</title>

    <link href="style.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
  </head>
  <body>
    <?php
   session_start();
   require_once("koneksi.php");
   $username = $_POST['username'];
   $password = md5($_POST['password']); 
   $sql = "select * from admin where username = '$username'";
   $query = $db ->query($sql);
   $hasil = $query->fetch_assoc();
   if($query->num_rows == 0) 
   {
     echo "<div align='center'>Username Belum Terdaftar! <a href='login.php'>Back</a></div>";
   } 
   else 
   {
     if($password <> $hasil['password']) 
     {
       echo "<div align='center'>Password salah! <a href='login.php'>Back</a></div>";
     } else
      {
          $_SESSION['username'] = $hasil['username'];
          header("location:admin.php"); 
      }
   }
?>

    <script src="jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/docs.min.js"></script>
  </body>
</html>