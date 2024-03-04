<?php
require "../include/koneksi.php";
$mysqli = new mysqli('localhost', 'root', '', 'beasiswa');
session_start();

if (!isset($_SESSION['admin'])) {
    echo "<script language='javascript'> window.location.href='login.php'</script>";
} else {
    $lowongan = new Lowongan();
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PROGRAM BEASISWA MI AL-HUSNA YPIHN CURUG</title>

        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    </head>

    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="index.html">PROGRAM BEASISWA MI AL-HUSNA YPIHN CURUG (<?php echo $_SESSION['admin']; ?>) </a>
                </div>
                <!-- /navbar -->
                <div class="wrapper">
                    <div class="container">
                        <div class="row">
                            <div class="span3">
                                <div class="sidebar">
                                    <ul class="widget widget-menu unstyled">
                                        <li class="active">
                                            <a href="index.php" style="color: white;">
                                                <i class="menu-icon icon-dashboard" style="color: white;"></i>Dashboard
                                            </a>
                                        </li>
                                        <li><a href="?menu=guru" style="color: white;"><i class="menu-icon icon-envelope" style="color: white;"></i>Data Guru </a></li>
                                        <li><a href="?menu=kelas" style="color: white;"><i class="menu-icon icon-envelope" style="color: white;"></i>Data Kelas </a></li>
                                        <li><a href="?menu=penerimaan" style="color: white;"><i class="menu-icon icon-inbox" style="color: white;"></i>Data Kriteria </a></li>
                                        <li><a href="?menu=users" style="color: white;"><i class="menu-icon icon-key" style="color: white;"></i>Data Alternatif </a></li>
                                        <li><a href="?menu=pelamar" style="color: white;"><i class="menu-icon icon-group" style="color: white;"></i>Penilaian </a></li>
                                        <li><a href="?menu=perhitungan" style="color: white;"><i class="menu-icon icon-group" style="color: white;"></i>Perhitungan </a></li>
                                        <li><a href="logout.php" style="color: white;"><i class="menu-icon icon-signout" style="color: white;"></i>Logout </a></li>
                                    </ul>
                                    <!--/.widget-nav-->
                                </div>
                                <!--/.sidebar-->
                            </div>
                            <!--/.span3-->
                            <?php
                            include "menu.php";
                            ?>
                        </div>
                    </div>
                    <!--/.container-->
                </div>
                <!--/.wrapper-->
                <div class="footer">
                    <div class="container">
                        <b class="copyright">&copy; 2023 </b>All rights reserved.
                    </div>
                </div>
                <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
                <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
                <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
                <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
                <script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
                <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
                <script src="scripts/common.js" type="text/javascript"></script>
            </div>
        </div>
    </body>

    </html>
<?php
}
?>