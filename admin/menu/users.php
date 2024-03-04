<div class="span9">
	<div class="content">
		<?php
		$user = new User();
		include "../include/fungsi_tanggal.php";
		$lowongan = new Lowongan();
		$lowongan_rinci = new LowonganRinci();

		$pelamar = new Pelamar();

		if (isset($_GET['aksi'])) {
			if ($_GET['aksi'] == "tambah") {
				/*----------------------------------
			------------------------------------
			------------------------------------
			------------------------------------
			Ketika user ingin menambah data
			------------------------------------
			------------------------------------
			------------------------------------
			----------------------------------*/
		?>
				<div class="module">
					<div class="module-head">
						<h3>Input Siswa Baru</h3>
					</div>
					<?php
					if (isset($_POST['submit'])) {
						$nama = $mysqli->real_escape_string($_POST['nama_lengkap']);
						$alamat = $mysqli->real_escape_string($_POST['alamat']);
						$tanggal_lahir = $mysqli->real_escape_string($_POST['tanggal_lahir']);
						$kelas = $mysqli->real_escape_string($_POST['kelas']);
						$username = "siswa" . rand(100, 800);

						$qry = $mysqli->query("INSERT INTO users (id_user,nama_lengkap,username,password,alamat,tanggal_lahir,kelas) VALUES ('','$nama','$username','827ccb0eea8a706c4c34a16891f84e7b', '$alamat', '$tanggal_lahir','$kelas')");

						if ($qry) {
							echo "<script language='javascript'>alert('Data berhasil disimpan'); document.location='?menu=users'</script>";
						} else {
							// echo "<script language='javascript'>alert('Gagal'); document.location='?menu=guru'</script>";
							echo "error message : " . $mysqli->error;
						}
					}
					?>
					<div class="module-body">
						<form class="form-horizontal row-fluid" action="" method="post">
							<div class="control-group">
								<label class="control-label" for="basicinput">Nama Lengkap</label>
								<div class="controls">
									<input type="text" id="basicinput" name="nama_lengkap" placeholder="Nama Lengkap" class="span8">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="basicinput">Alamat</label>
								<div class="controls">
									<input type="text" id="basicinput" name="alamat" placeholder="Alamat" class="span8">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="basicinput">Tanggal Lahir</label>
								<div class="controls">
									<input type="date" id="basicinput" name="tanggal_lahir" placeholder="Tanggal Lahir" class="span8">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="basicinput">Kelas</label>
								<div class="controls">
									<?php
									$data_guru = $mysqli->query("SELECT * FROM kelas");
									?>
									<select name="kelas">
										<?php foreach ($data_guru as $data) : ?>
											<option value='<?= $data['id'] ?>'><?= $data['kelas'] ?></option>
										<?php endforeach ?>
									</select>
								</div>
							</div>

							<div class="control-group">
								<div class="controls">
									<button type="submit" name="submit" class="btn btn-primary">Simpan</button>
									<a class='btn' href='?menu=users'>kembali</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			<?php

			} else if ($_GET['aksi'] == "detail") {
				/*----------------------------------
			------------------------------------
			------------------------------------
			------------------------------------
			Ketika user ingin melihat detail data
			------------------------------------
			------------------------------------
			------------------------------------
			----------------------------------*/
				$id_user = $_GET['idusers'];
				$qr_nama = $user->GetData("where id_user = '$id_user'");
				$nama = $qr_nama->fetch();

			?>
				<div class="module">
					<div class="module-head" style="text-align:center;">
						<h2>Detail Siswa </h2>
					</div>
					<div class="module-body table">
						<table cellpadding="0" cellspacing="0" border="0" class="table table-condensed" width="100%">
							<thead>
							</thead>
							<tbody>
								<?php
								$qr = $user->GetData("where id_user = '$id_user'");
								while ($data = $qr->fetch()) {
									$tglLahir = tgl_indo($data['tanggal_lahir']);
								?>
									<tr>
										<td width=20%>Nama Lengkap </td>
										<td width=1%>:</td>
										<td width=2079%><?= $data['nama_lengkap'] ?></td>
									</tr>

									<tr>
										<td width=20%>Alamat </td>
										<td width=1%>:</td>
										<td width=2079%><?= $data['alamat'] ?></td>
									</tr>
									<tr>
										<td width=20%>Tanggal Lahir </td>
										<td width=1%>:</td>
										<td width=2079%><?= $tglLahir; ?></td>
									</tr>
									<?php
									$nama_kelas = $mysqli->query("SELECT * FROM kelas WHERE id = '" . $data['kelas'] . "'")->fetch_assoc()['kelas'];
									?>
									<tr>
										<td width=20%>Kelas </td>
										<td width=1%>:</td>
										<td width=2079%><?= $nama_kelas ?></td>
									</tr>
								<?php } ?>
							</tbody>
						</table>

						<div class="control-group" style="margin-left: 15px;">
							<div class="controls">
								<a class='btn btn-warning btn-sm' href='?menu=users&aksi=edit&idusers=<?= $id_user ?>' style="margin-right: 8px;">Edit</a>
								<a class='btn btn-danger btn-sm' href='?menu=users&aksi=hapus&id=<?= $id_user ?>' style="margin-right: 8px;">Hapus</a>
								<a class='btn btn-success btn-sm' href='?menu=users&aksi=penilaian&id=<?= $id_user ?>'>Penilaian</a>
							</div>
						</div>
					</div>
				<?php

			} else if ($_GET['aksi'] == "hapus") {
				/*----------------------------------
			------------------------------------
			------------------------------------
			------------------------------------
			Ketika user ingin menghapus data
			------------------------------------
			------------------------------------
			------------------------------------
			----------------------------------*/
				if (isset($_GET['id'])) {
					$id = $_GET['id'];
					$qry = $mysqli->query("DELETE FROM users WHERE id_user = '$id'");
					$mysqli->query("DELETE FROM pelamar WHERE id_user ='$id'");
					$mysqli->query("DELETE FROM hitung WHERE id_user = '$id'");
					if ($qry) {
						echo "<script language='javascript'>alert('Data berhasil dihapus'); document.location='?menu=users'</script>";
					} else {
						echo "<script language='javascript'>alert('Gagal'); document.location='?menu=users'</script>";
					}
				} else {
					print "Pilih guru terlebih dahulu";
				}
			} else if ($_GET['aksi'] == "edit") {
				/*----------------------------------
			------------------------------------
			------------------------------------
			------------------------------------
			Ketika user ingin mengedit data
			------------------------------------
			------------------------------------
			------------------------------------
			----------------------------------*/
				$id_user = $_GET['idusers'];
				$qr_nama = $user->GetData("where id_user = '$id_user'");
				$nama = $qr_nama->fetch();
				?>
					<div class="module">
						<div class="module-head">
							<h3>Edit Siswa</h3>
						</div>
						<?php
						if (isset($_POST['update'])) {
							$id = $_POST['id'];
							$nama = $mysqli->real_escape_string($_POST['nama_lengkap']);
							$alamat = $mysqli->real_escape_string($_POST['alamat']);
							$tanggal_lahir = $mysqli->real_escape_string($_POST['tanggal_lahir']);
							$kelas = $mysqli->real_escape_string($_POST['kelas']);
							$username = "siswa" . rand(100, 800);

							$qry = $mysqli->query("UPDATE users SET nama_lengkap = '$nama', 
							alamat = '$alamat', 
							tanggal_lahir = '$tanggal_lahir',
							kelas = '$kelas' 
							WHERE id_user = '$id'");

							if ($qry) {
								echo "<script language='javascript'>alert('Data berhasil disimpan'); document.location='?menu=users'</script>";
							} else {
								// echo "<script language='javascript'>alert('Gagal'); document.location='?menu=guru'</script>";
								echo "error message : " . $mysqli->error;
							}
						}
						?>

						<?php
						$qr = $user->GetData("where id_user = '$id_user'");
						while ($data = $qr->fetch()) {
							$tglLahir = tgl_indo($data['tanggal_lahir']);
						?>

							<div class="module-body">
								<form class="form-horizontal row-fluid" action="" method="post">
									<div class="control-group">
										<label class="control-label" for="basicinput">Nama Lengkap</label>
										<div class="controls">
											<input type="hidden" name="id" value="<?= $id_user ?>">
											<input type="text" id="basicinput" name="nama_lengkap" value="<?= $data['nama_lengkap'] ?>" class="span8">
										</div>
									</div>

									<div class="control-group">
										<label class="control-label" for="basicinput">Alamat</label>
										<div class="controls">
											<input type="text" id="basicinput" name="alamat" value="<?= $data['alamat'] ?>" class="span8">
										</div>
									</div>

									<div class="control-group">
										<label class="control-label" for="basicinput">Tanggal Lahir</label>
										<div class="controls">
											<input type="date" id="basicinput" name="tanggal_lahir" value="<?= $data['tanggal_lahir'] ?>" class="span8">
										</div>
									</div>

									<div class="control-group">
										<label class="control-label" for="basicinput">Kelas</label>
										<div class="controls">
											<select name="kelas">
												<?php
												$data_kelas = $mysqli->query("SELECT * FROM kelas");
												$data_kelas_target = $mysqli->query("SELECT * FROM kelas Where id = '$data[kelas]'");
												foreach ($data_kelas_target as $kelastarget) {
													$kelasbefore = $kelastarget['kelas'];
												}
												?>
												<option selected="selected" value="<?= $data['kelas'] ?>"><?= $kelasbefore; ?></option>
												<option disabled="disabled"></option>
												<?php foreach ($data_kelas as $data) : ?>
													<option value='<?= $data['id'] ?>'><?= $data['kelas'] ?></option>
												<?php endforeach ?>
											</select>
										</div>
									</div>

									<div class="control-group">
										<div class="controls">
											<button type="submit" name="update" class="btn">Edit</button>
											<a class='btn' href='?menu=users'>kembali</a>
										</div>
									</div>
								</form>
							<?php } ?>
							</div>
					</div>
				<?php
			} else if ($_GET['aksi'] == 'penilaian') {
				$id = $_GET['id'];
				?>
					<div class="module">
						<div class="module-head">
							<h3>Input Penilaian </h3>
						</div>
						<?php
						if (isset($_POST['submit'])) {
							$id = $_POST['id'];
							$penghasilan = $mysqli->real_escape_string($_POST['penghasilan']);
							$tanggungan = $mysqli->real_escape_string($_POST['tanggungan']);
							$rapot = $mysqli->real_escape_string($_POST['rapot']);
							$ekskul = $mysqli->real_escape_string($_POST['ekskul']);
							$disiplin = $mysqli->real_escape_string($_POST['disiplin']);

							$qry = $mysqli->query("INSERT INTO pelamar (id_lamaran,id_user,id_lowongan,kriteria,nilai,file) VALUES ('','$id','11','Penghasilan Orang Tua', '$penghasilan', '')");

							$mysqli->query("INSERT INTO pelamar (id_lamaran,id_user,id_lowongan,kriteria,nilai,file) VALUES ('','$id','11','Jumlah Tangguang Orang Tua', '$tanggungan', '')");

							$mysqli->query("INSERT INTO pelamar (id_lamaran,id_user,id_lowongan,kriteria,nilai,file) VALUES ('','$id','11','Nilai Rapot Semester', '$rapot', '')");

							$mysqli->query("INSERT INTO pelamar (id_lamaran,id_user,id_lowongan,kriteria,nilai,file) VALUES ('','$id','11','Jumlah Ektrakulikuler', '$ekskul', '')");

							$mysqli->query("INSERT INTO pelamar (id_lamaran,id_user,id_lowongan,kriteria,nilai,file) VALUES ('','$id','11','Kedisplinan', '$disiplin', '')");

							$mysqli->query("INSERT INTO hitung (id_hitung,id_user,id_lowongan,vektor_s,vektor_v) VALUES ('','$id','11',0,0)");


							if ($qry) {
								echo "<script language='javascript'>alert('Data berhasil disimpan'); document.location='?menu=users'</script>";
							} else {
								// echo "<script language='javascript'>alert('Gagal'); document.location='?menu=guru'</script>";
								echo "error message : " . $mysqli->error;
							}
						}
						?>
						<div class="module-body">
							<form class="form-horizontal row-fluid" action="" method="post">
								<div class="control-group">
									<label class="control-label" for="basicinput">Penghasilan Orang Tua</label>
									<div class="controls">
										<input type="hidden" name="id" value="<?= $id; ?>">
										<input type="text" id="basicinput" name="penghasilan" placeholder="Penghasilan Orang Tua" class="span8">
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="basicinput">Jumlah Tangguang Orang Tua</label>
									<div class="controls">
										<input type="text" id="basicinput" name="tanggungan" placeholder="Jumlah Tangguang Orang Tua" class="span8">
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="basicinput">Nilai Rapot Semester</label>
									<div class="controls">
										<input type="text" id="basicinput" name="rapot" placeholder="Nilai Rapot Semester" class="span8">
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="basicinput">Jumlah Ekstrakulikuler</label>
									<div class="controls">
										<input type="text" id="basicinput" name="ekskul" placeholder="Jumlah Ekstrakulikuler" class="span8">
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="basicinput">Kedisiplinan</label>
									<div class="controls">
										<input type="text" id="basicinput" name="disiplin" placeholder="Kedisiplinan" class="span8">
									</div>
								</div>


								<div class="control-group">
									<div class="controls">
										<button type="submit" name="submit" class="btn btn-primary">Simpan</button>
										<a class='btn' href='?menu=users'>kembali</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				<?php
			}
		} else {

			/*----------------------------------
		------------------------------------
		------------------------------------
		------------------------------------
		Ketika user hanya menampilkan data
		------------------------------------
		------------------------------------
		------------------------------------
		----------------------------------*/

				?>
				<div class="module">
					<div class="module-head">
						<h3>Data Siswa <a class="btn btn-primary" href="?menu=users&aksi=tambah">Tambah</a> </h3>
					</div>
					<div class="module-body table">
						<table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display" width="100%">
							<thead>
								<tr>
									<th>No.</th>
									<th>Nama Lengkap</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<?php
								$no = 1;
								$getData = $user->GetData("");

								while ($data = $getData->fetch()) {
									echo "<tr>
							<td width = 5%>$no</td>
							<td width = 80%>$data[nama_lengkap]</td>";
									echo "<td width = 22%> <a class='btn btn-small btn-success' href='?menu=users&aksi=detail&idusers=$data[id_user]'>Detail</a></td>";

									echo "</tr>";

									$no++;
								}
								//$up = mysql_query("update gtp_peserta set approve = '1' where approve = '0'");
								?>
							</tbody>
						</table>
					</div>
				</div>
			<?php
		}
			?>
				</div>
	</div>