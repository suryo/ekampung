<?php
include '../koneksi.php';

$mitra = $_POST["mitra"];
$idmitra = $_POST["idmitra"];
$sql = "UPDATE mitra SET mitra = '" . $mitra . "' WHERE id = ".$idmitra;

if (mysqli_query($koneksi, $sql)) {
  header("location:/ekampung/mitra.php");	
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($koneksi);
}
?>