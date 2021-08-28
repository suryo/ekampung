<?php
include '../koneksi.php';

$mitra = $_POST["mitra"];
echo "ini mitra:".($_POST["mitra"]);
$sql = "INSERT INTO mitra (mitra) VALUES ('$mitra')";

if (mysqli_query($koneksi, $sql)) {
  echo "New record created successfully";
  header("location:/ekampung/mitra.php");	
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($koneksi);
}
?>