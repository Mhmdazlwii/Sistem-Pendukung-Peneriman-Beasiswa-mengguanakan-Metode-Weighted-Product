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
                        <h3>Input kelas Baru</h3>
                    </div>
                    <?php
                    if (isset($_POST['submit'])) {
                        $kelas = $_POST['kelas'];
                        $id_guru = $_POST['id_guru'];

                        $qry = $mysqli->query("INSERT INTO kelas (id_guru,kelas) VALUES ('$id_guru', '$kelas')");

                        if ($qry) {
                            echo "<script language='javascript'>alert('Data berhasil disimpan'); document.location='?menu=kelas'</script>";
                        } else {
                            echo "<script language='javascript'>alert('Gagal'); document.location='?menu=kelas'</script>";
                        }
                    }
                    ?>
                    <div class="module-body">
                        <form class="form-horizontal row-fluid" action="" method="post">
                            <div class="control-group">
                                <label class="control-label" for="basicinput">Kelas</label>
                                <div class="controls">
                                    <input type="text" id="basicinput" name="kelas" placeholder="Kelas" class="span8">
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="basicinput">Guru</label>
                                <div class="controls">
                                    <?php
                                    $data_guru = $mysqli->query("SELECT * FROM guru");
                                    ?>
                                    <select name="id_guru">
                                        <?php foreach ($data_guru as $data) : ?>
                                            <option value='<?= $data['id'] ?>'><?= $data['nama'] ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>
                            </div>

                            <div class="control-group">
                                <div class="controls">
                                    <button type="submit" name="submit" class="btn">Simpan</button> <a class='btn' href='?menu=kelas'>kembali</a>
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
                        <h3>Input kelas Baru</h3>
                    </div>
                    <div class="module-body">
                        <?php

                        if (isset($_POST['submit'])) {
                            $id = $_POST['id'];
                            $kelas = $_POST['kelas'];
                            $id_guru = $_POST['id_guru'];

                            $qry = $mysqli->query("UPDATE kelas SET kelas = '$kelas', id_guru = '$id_guru' WHERE id = '$id'");

                            if ($qry) {
                                echo "<script language='javascript'>alert('Data berhasil diedit'); document.location='?menu=kelas'</script>";
                            } else {
                                echo "<script language='javascript'>alert('Gagal'); document.location='?menu=kelas'</script>";
                            }
                        }

                        if (isset($_GET['id'])) {
                            $id = $_GET['id'];
                            $db = $mysqli->query("SELECT * FROM kelas WHERE id = '$id'");

                            if ($db->num_rows == 0) {
                                echo "<script>document.location='?menu=kelas'</script>";
                            } else {
                                $data = $db->fetch_assoc();
                            }
                        ?>
                            <form class="form-horizontal row-fluid" action="" method="post">
                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Kelas</label>
                                    <div class="controls">
                                        <input type="hidden" name="id" <?php echo "value='$id'"; ?>>
                                        <input type="text" id="basicinput" name="kelas" placeholder="kelas" class="span8" <?php echo "value='$data[kelas]'"; ?>>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Guru</label>
                                    <div class="controls">
                                        <?php
                                        $data_guru = $mysqli->query("SELECT * FROM guru");
                                        ?>
                                        <select name="id_guru">
                                            <?php foreach ($data_guru as $guru) : ?>
                                                <option value='<?= $guru['id'] ?>' <?= $guru['id'] == $data['id_guru'] ? 'selected' : ''; ?>><?= $guru['nama'] ?></option>
                                            <?php endforeach ?>
                                        </select>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" name="submit" class="btn">Simpan</button> <a class='btn' href='?menu=kelas'>kembali</a>
                                    </div>
                                </div>
                            </form>
                        <?php

                        } else {
                            print "Pilih kelas terlebih dahulu";
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
                    $qry = $mysqli->query("DELETE FROM kelas WHERE id = '$id'");

                    if ($qry) {
                        echo "<script language='javascript'>alert('Data berhasil dihapus'); document.location='?menu=kelas'</script>";
                    } else {
                        echo "<script language='javascript'>alert('Gagal'); document.location='?menu=kelas'</script>";
                    }
                } else {
                    print "Pilih kelas terlebih dahulu";
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
                    <h3>Data Kelas <a class="btn btn-primary" href="?menu=kelas&aksi=tambah">Tambah</a> </h3>
                </div>
                <div class="module-body table">
                    <table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display" width="100%">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Nama kelas</th>
                                <th>Guru</th>
                                <th>Opsi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $no = 1;
                            $getData = $mysqli->query("SELECT * FROM kelas");
                            foreach ($getData as $data) :
                                $id_guru = $data['id_guru'];
                                $nama_guru = $mysqli->query("SELECT * FROM guru where id = $id_guru")->fetch_assoc()['nama'];
                            ?>
                                <tr>
                                    <td width=7%><?= $no ?></td>
                                    <td><?= $data['kelas'] ?></td>
                                    <td><?= $nama_guru ?></td>
                                    <td width=15%>
                                        <a class='btn btn-small btn-warning' href='?menu=kelas&aksi=edit&id=<?= $data['id'] ?>'>Edit</a>
                                        <a class='btn btn-small btn-danger' href='?menu=kelas&aksi=hapus&id=<?= $data['id'] ?>'>Hapus</a>
                                    </td>
                                </tr>
                                <?php $no++ ?>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
            </div>
        <?php
        }
        ?>
    </div>
</div>