<?php
if (isset($_GET['menu'])) {
	$menu = $_GET['menu'];

	if ($menu == "pelamar") {
		include "menu/pelamar.php";
	}

	if ($menu == "users") {
		include "menu/users.php";
	}

	if ($menu == "file") {
		include "menu/file.php";
	}

	if ($menu == "penerimaan") {
		include "menu/penerimaan.php";
	}

	if ($menu == "perhitungan") {
		include "menu/perhitungan.php";
	}

	if ($menu == "guru") {
		include "menu/guru.php";
	}

	if ($menu == "kelas") {
		include "menu/kelas.php";
	}
} else {
	include "menu/home.php";
}
