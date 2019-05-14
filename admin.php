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
            <li><a href="add.php">Add Product</a></li>
            <li class="active"><a href="admin.php">Tabel</a></li>
            <li><a href="logout.php">Log Out</a></li>
            <li><img src="images/satu.jpg" width="240px" height="240px"></li>
            <li><b>About Me/b></li>
            <li><b>Nama : Clarina Juliatuty Pratiwi</b></li>
            <li><b>TTL : Jambi, 15 Juli 2000</b></li>
            <li><b>Kontak : clarina.julia15@gmail.com</b></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Hai Admin, punya info skincare terbaru? Yuk berbagi di skincare catalogue!</h1>

          <h2 class="sub-header">My Catalogue</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Picture</th>
                  <th>Product</th>
                  <th>Specification</th>
                  <th>Price</th>
                  <th>Opsi</th>
                </tr>
              </thead>
              <tbody>
                <?php
                        include "koneksi.php";
                        $no = 1;
                        $data = mysqli_query($db,"select * from post");
                        while($d = mysqli_fetch_array($data)) {
                    ?>
                    <tr>
                        <td><?php echo "<img src='images/".$d['foto']."' width='100' height='100'>"?></td>
                        <td><?php echo $d['title']; ?></td>
                        <td><?php echo $d['ket']; ?></td>
                        <td><?php echo $d['harga']; ?></td>
                        <td><a href="edit.php?id=<?php echo $d['id']; ?>"><input type="button" value="Edit" title="Edit"></a>
                            <a href="delete.php?id=<?php echo $d['id']; ?>"onclick=" javascript : return confirm('Are you sure deleting this post?')"><input type="button" value="Delete" title="Delete"  class="del"></a> </td>
                    </tr>
                    <?php
                }
                ?>
              </tbody>
            </table>
          </div> 
          <footer>
           <p>&copy; 2019 SkincareCatalogue.com<p>
          </footer>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/docs.min.js"></script>
  </body>
</html>
