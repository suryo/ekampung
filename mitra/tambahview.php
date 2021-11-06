<?php
echo ("ekampung.id");
?>
<!DOCTYPE html>
<html>
<head>

<title>EKampung</title>
</head>
<body>

<h1>Tentang Ekampung</h1>
<p>Selamat Datang di Ekampung</p>
  
<?php
include '../header.php';
?>
	<div class="login">
	<br/>
		<form action="tambahaction.php" method="post" onSubmit="return validasi()">
			<div>
				<label>Mitra:</label>
				<input type="text" name="mitra" id="mitra" />
			</div>
						
			<div>
				<input type="submit" value="Simpan" class="tombol">
			</div>
		</form>
	</div>
</body>

<script type="text/javascript">
	function validasi() {
		var mitra = document.getElementById("mitra").value;		
		if (mitra != "" ) {
			return true;
		}else{
			alert('mitra harus di isi !');
			return false;
		}
	}

</script>
</html>