<div class="span9">
    <div class="content">
        <?php

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
                        <h3>Input Guru Baru</h3>
                    </div>
                    <?php
                    if (isset($_POST['submit'])) {
                        $nama = $mysqli->real_escape_string($_POST['nama']);
                        $jabatan = $mysqli->real_escape_string($_POST['jabatan']);
                        $pendidikan = $mysqli->real_escape_string($_POST['pendidikan']);

                        $qry = $mysqli->query("INSERT INTO guru (nama,jabatan,pendidikan) VALUES ('$nama', '$jabatan', '$pendidikan')");

                        if ($qry) {
                            echo "<script language='javascript'>alert('Data berhasil disimpan'); document.location='?menu=guru'</script>";
                        } else {
                            // echo "<script language='javascript'>alert('Gagal'); document.location='?menu=guru'</script>";
                            echo "error message : " . $mysql->error;
                        }
                    }
                    ?>
                    <div class="module-body">
                        <form class="form-horizontal row-fluid" action="" method="post">
                            <div class="control-group">
                                <label class="control-label" for="basicinput">Nama Lengkap</label>
                                <div class="controls">
                                    <input type="text" id="basicinput" name="nama" placeholder="Nama Lengkap" class="span8">
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="basicinput">Jabatan</label>
                                <div class="controls">
                                    <input type="text" id="basicinput" name="jabatan" placeholder="Jabatan" class="span8">
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="basicinput">Pendidikan Terakhir</label>
                                <div class="controls">
                                    <input type="text" id="basicinput" name="pendidikan" placeholder="Pendidikan Terakhir" class="span8">
                                </div>
                            </div>

                            <div class="control-group">
                                <div class="controls">
                                    <button type="submit" name="submit" class="btn">Simpan</button> <a class='btn' href='?menu=guru'>kembali</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            <?php

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
            ?>
                <div class="module">
                    <div class="module-head">
                        <h3>Input guru Baru</h3>
                    </div>
                    <div class="module-body">
                        <?php

                        if (isset($_POST['submit'])) {
                            $id = $_POST['id'];
                            $nama = $_POST['nama'];
                            $jabatan = $_POST['jabatan'];
                            $pendidikan = $_POST['pendidikan'];

                            $qry = $mysqli->query("UPDATE guru SET nama = '$nama', jabatan = '$jabatan', pendidikan = '$pendidikan' WHERE id = '$id'");

                            if ($qry) {
                                echo "<script language='javascript'>alert('Data berhasil diedit'); document.location='?menu=guru'</script>";
                            } else {
                                echo "<script language='javascript'>alert('Gagal'); document.location='?menu=guru'</script>";
                            }
                        }

                        if (isset($_GET['id'])) {
                            $id = $_GET['id'];
                            $db = $mysqli->query("SELECT * FROM guru WHERE id = '$id'");

                            if ($db->num_rows == 0) {
                                echo "<script>document.location='?menu=guru'</script>";
                            } else {
                                $data = $db->fetch_assoc();
                            }
                        ?>
                            <form class="form-horizontal row-fluid" action="" method="post">
                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Nama </label>
                                    <div class="controls">
                                        <input type="hidden" name="id" <?php echo "value='$id'"; ?>>
                                        <input type="text" id="basicinput" name="nama" placeholder="nama" class="span8" <?php echo "value='$data[nama]'"; ?>>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Jabatan</label>
                                    <div class="controls">
                                        <input type="text" id="basicinput" name="jabatan" placeholder="Kuota guru" class="span8" <?php echo "value='$data[jabatan]'"; ?>>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Pendidikan Terkahir</label>
                                    <div class="controls">
                                        <input type="text" id="basicinput" name="pendidikan" placeholder="Pendidikan Terakhir" class="span8" <?php echo "value='$data[pendidikan]'"; ?>>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" name="submit" class="btn">Simpan</button> <a class='btn' href='?menu=guru'>kembali</a>
                                    </div>
                                </div>
                            </form>
                        <?php

                        } else {
                            print "Pilih guru terlebih dahulu";
                        }

                        ?>
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
                    $qry = $mysqli->query("DELETE FROM guru WHERE id = '$id'");

                    if ($qry) {
                        echo "<script language='javascript'>alert('Data berhasil dihapus'); document.location='?menu=guru'</script>";
                    } else {
                        echo "<script language='javascript'>alert('Gagal'); document.location='?menu=guru'</script>";
                    }
                } else {
                    print "Pilih guru terlebih dahulu";
                }
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
                    <h3>Data Guru <a class="btn btn-primary" href="?menu=guru&aksi=tambah">Tambah</a> </h3>
                </div>
                <div class="module-body table">
                    <table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display" width="100%">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Nama Guru</th>
                                <th>Jabatan</th>
                                <th>Pendidikan Terakhir</th>
                                <th>Opsi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $no = 1;
                            $getData = $mysqli->query("SELECT * FROM guru");

                            foreach ($getData as $data) {

                                echo "<tr>
							<td width = 7%>$no</td>
							<td >$data[nama]</td>
							<td >$data[jabatan]</td>
							<td width = 2%>$data[pendidikan]</td>";

                                echo "<td width = 15%>
							<a class='btn btn-small btn-warning' href='?menu=guru&aksi=edit&id=$data[id]'>Edit</a>
							<a class='btn btn-small btn-danger' href='?menu=guru&aksi=hapus&id=$data[id]'>Hapus</a>
							</td>";

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