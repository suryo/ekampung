<!DOCTYPE html>
<html>
<head>
	<title>ekampung</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<br/>
	<br/>
	<center><h2>www.ekampung.id</h2></center>	
	<br/>
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
				<input type="submit" value="Login" class="tombol">
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