<?php
session_start();
if(!isset($_SESSION['username'])) {
   header('location:login.php'); 
} else { 
   $username = $_SESSION['username']; 
   
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.ico">

    <title>UAS TEORI PWEB 2</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="add.php">Add Product</a></li>
            <li><a href="owner.php">Owner</a></li>
            <li><a href="admin.php">Tabel</a></li>
            <li><a href="logout.php">Log Out</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Add Product</h1>
    <?php
        include 'koneksi.php';
       // $id = $_GET["id"]; 
        $id = isset($_GET["id"])?$_GET["id"]:null;
        $data = mysqli_query($db,"select * from post where id='$id'");
        while($d = mysqli_fetch_array($data)) {
    ?>
    <form method="post" action="update.php">
        <table align="center">
            <tr>
                <td>Product </td>
                <td></td>
                <td>
                    <input type="hidden" name="id" value="<?php echo $d['id'] ;?>">
                    <input class="form-control" type="text" name="title" value="<?php echo $d['title'] ;?>">
                </td>
            </tr>
            <tr>
                <td>Specification </td>
                <td></td>
                <td>
                  <textarea class="form-control" type="text" name="ket" value=""><?php echo $d['ket'] ;?></textarea>
                </td>
            </tr>
            <tr>
                <td>Price </td>
                <td></td>
                <td>
                  <input class="form-control" type="text" name="harga" value="<?php echo $d['harga'] ;?>">
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Simpan" name="simpan"></td>
            </tr>
        </table>
    </form>
    </div>
    </div>
            <?php
        }
        ?>
    

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/docs.min.js"></script>
  </body>
</html>