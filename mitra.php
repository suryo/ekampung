<?php
include 'koneksi.php';
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

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<title>Ekampung Gaes</title>
</head>
<body>

<h1>Ekampung-MITRA</h1>
<p>Selamat Datang di Ekampung</p>

<?php
include 'header.php';
?>

<br>
<br>
<a href="/ekampung/mitra/tambahview.php">Tambah</a>
<!-- ini saya buat tabel untuk memunculkan data mitra -->
<table>
<tr>
    <th>ID</th>
    <th>Mitra</th>
    <th>Action</th>
  </tr>
<?php
$mitra = mysqli_query($koneksi,"select * from mitra");
while($row = mysqli_fetch_array($mitra)) : ?>
    <tr>
        <td align="center">
            <?= $row['id']?>
        </td>
        <td> <?= $row['mitra']?> </td>
        <td> <a href="/ekampung/mitra/editview.php?id=<?= $row['id']?>">edit</a> <a href="/ekampung/mitra/deleteaction.php?id=<?= $row['id']?>">delete</a></td>
    </tr>
    <?php endwhile; ?>
</table>




 <footer>
  <p>Author: SuryoAtmojo</p>
  <p><a href="mailto:suryoatm@gmail.com">ekampung.id</a></p>
</footer> 
</body>
</html> 