<?php
error_reporting(0);
$lowongan = new LowonganRinci();
$user = new User();
$pelamar = new HitungSPK();
$guru = new guru();
$kelas = new kelas();

$id_lowongan = "11";

$qr_p = $lowongan->GetDataLowongan($id_lowongan);
$qr_u = $user->GetData("");
$qr_pl = $pelamar->GetData("");
$qr_g = $guru->GetData("");
$qr_k = $kelas->GetData("");


?>
<div class="span9">
    <div class="content">
        <div class="btn-controls">
            <div class="btn-box-row row-fluid">
                <a href="?menu=guru" class="btn-box big span4"><i class="icon-user"></i><b><?php echo $qr_g->rowCount(); ?></b>
                    <p class="text-muted">
                        Data Guru</p>
                </a>
                 <a href="?menu=kelas" class="btn-box big span4"><i class="icon-building"></i><b><?php echo $qr_k->rowCount(); ?></b>
                    <p class="text-muted">
                        Data Kelas </p>
                </a>
                <a href="?menu=users" class="btn-box big span4"><i class="icon-group"></i><b><?php echo $qr_pl->rowCount(); ?></b>
                    <p class="text-muted">
                        Data Alternatif</p>
                </a>
                </div>

            <div class="btn-box-row row-fluid">
               <a href="?menu=penerimaan&kriteria=11" class="btn-box big span4"><i class="icon-key"></i><b><?php echo $qr_p->rowCount(); ?></b>
                    <p class="text-muted">
                        Data Kriteria</p>
                </a>
            </div>

            <!-- <?php
                    //menghitung persentase lowongan yang telah diberi solusi
                    $qr_persen = $lowongan->GetData("where status_solusi = '1'");
                    $jml = $qr_persen->rowCount();
                    $total = $qr_p->rowCount();
                    $persen = round(($jml / $total) * 100, 2);
                    ?> -->
        </div>
        <!--/#btn-controls-->
    </div>
    <!--/.content-->
</div>
<!--/.span9-->