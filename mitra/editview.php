<?php
echo ("ekampung.id");
?>
<!DOCTYPE html>
<html>

<head>
	<style>
		table {
			font-family: arial, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}

		td,
		th {
			border: 1px solid #dddddd;
			text-align: left;
			padding: 8px;
		}

		tr:nth-child(even) {
			background-color: #dddddd;
		}
	</style>
	<title>EKampung</title>
</head>

<body>

	<h1>Tentang Ekampung</h1>
	<p>Selamat Datang di Ekampung</p>

	<?php
	include '../header.php';
	include '../koneksi.php';
	$id = $_GET["id"];
	$mitra = mysqli_query($koneksi, "select * from mitra where id= $id");
	while ($row = mysqli_fetch_array($mitra))
		$valuemitra = $row['mitra'];
	?>
	<div class="login">
		<br />
		<form action="editaction.php" method="post" onSubmit="return validasi()">
			<div>
				<input type="hidden" name="idmitra" id="idmitra" value=<?= $id ?> />
				<label>Mitra:</label>
				<input type="text" name="mitra" id="mitra" value=<?= $valuemitra ?> />
			</div>

			<div>
				<input type="submit" value="Login" class="tombol">
			</div>
		</form>
	</div>
</body>

<script type="text/javascript">
	function validasi() {
		var mitra = document.getElementById("mitra").value;
		if (mitra != "") {
			return true;
		} else {
			alert('mitra harus di isi !');
			return false;
		}
	}
</script>

</html>