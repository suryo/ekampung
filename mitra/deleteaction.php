<?php
include '../koneksi.php';

$idmitra = $_GET["id"];
$sql = "DELETE FROM mitra WHERE id=" . $idmitra;

if (mysqli_query($koneksi, $sql)) {
  header("location:/ekampung/mitra.php");	
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($koneksi);
}
?>