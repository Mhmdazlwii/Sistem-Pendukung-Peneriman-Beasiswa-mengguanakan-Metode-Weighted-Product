<!-- intro area -->
<!-- About -->
<section id="about" class="home-section bg-white">

	<?php
	require '../admin/functions/koneksi.php';
	$user = new User();
	$id_user = $_SESSION['user'];

	if (isset($_POST['submit'])) {
		$nama_lengkap = $_POST['nama_lengkap'];
		$alamat = $_POST['alamat'];
		$tmp_lahir = $_POST['tempat_lahir'];
		$tgl_lahir = $_POST['tgl_lahir'];
		$no_hp = $_POST['no_hp'];
		$email = $_POST['email'];
		$pend = $_POST['pend'] . " " . $_POST['pend_jurusan'];


		$get = $user->GetData("where id_user='$id_user'");
		$data = $get->fetch();

		if (!empty($_FILES['file_cv']['tmp_name'])) {
			$explode = explode(".", $_FILES['file_cv']['name']);
			$file = "cv_" . $id_user . "_" . $nama_lengkap . "." . end($explode);
			move_uploaded_file($_FILES['file_cv']['tmp_name'], "../upload/" . $file);
		} else {

			$file = $data['file_cv'];
		}

		if (!empty($_FILES['file_foto']['tmp_name'])) {
			$explode = explode(".", $_FILES['file_foto']['name']);
			$file_foto = "foto_" . $id_user . "_" . $nama_lengkap . "." . end($explode);
			move_uploaded_file($_FILES['file_foto']['tmp_name'], "../upload/" . $file_foto);
		} else {

			$file_foto = $data['foto'];
		}

		$qry = $user->UpdateData($nama_lengkap, $alamat, $tmp_lahir, $tgl_lahir, $no_hp, $email, $pend, $file, $file_foto, $id_user);

		if ($qry) {
			echo "<script language='javascript'>alert('Data berhasil disimpan');document.location='index.php'</script>";
		} else {
			echo "<script language='javascript'>alert('Gagal');document.location='index.php'</script>";
		}
	}

	$get = $user->GetData("where id_user='$id_user'");
	$rowUser = $get->fetch();
	$namaKelas = $mysqli->query("SELECT * FROM kelas WHERE id = '" . $rowUser['kelas'] . "'")->fetch_assoc()['kelas'];
	?>
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<div class="section-heading">
					<h2>Profil Saya</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<form class="form-horizontal" role="form" method="post" action="" enctype="multipart/form-data">
					<div class="form-group">
						<div class="col-md-offset-2 col-md-8">



							<div class="form-group">
								<div class="col-md-offset-2 col-md-8">
									<label>Nama Lengkap</label>
									<input type="text" name="nama_lengkap" class="form-control" id="inputName" placeholder="Nama Lengkap" <?php echo "value = '$rowUser[nama_lengkap]'"; ?>>
								</div>
							</div>



							<div class="form-group">
								<div class="col-md-offset-2 col-md-8">
									<label>Alamat</label>
									<textarea type="text" name="alamat" class="form-control" id="inputName" placeholder="Alamat"><?php echo $rowUser['alamat']; ?></textarea>
								</div>
							</div>

						
							<div class="form-group">
								<div class="col-md-offset-2 col-md-8">
									<label>Tanggal Lahir (yyyy-mm-dd)</label>
									<input type="date" name="tgl_lahir" class="form-control" id="inputName" <?php echo "value = '$rowUser[tanggal_lahir]'"; ?>>
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-offset-2 col-md-8">
									<label>Kelas</label>

									<input type="text" name="kelas" class="form-control" id="inputName" placeholder="Kelas" value="<?= $namaKelas ?>" readonly>
								</div>
							</div>

							<br>
							<div class="form-group">
								<div class="col-md-offset-2 col-md-8">
									<input type="submit" name="submit" class="btn btn-primary" id="inputName" value="Simpan">
								</div>
							</div>



				</form>
			</div>
		</div>
	</div>
</section>