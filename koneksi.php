<?php
  $host = "localhost"; 
  $user = "root";
  $pass = "";
  $nama_db = "db_ekampung"; //nama database
  $koneksi = mysqli_connect($host,$user,$pass,$nama_db); //pastikan urutan nya seperti ini, jangan tertukar

  if(!$koneksi){ //jika tidak terkoneksi maka akan tampil error
    die ("Koneksi dengan database gagal: ".mysql_connect_error());
  }
  // else
  // {
  //   echo("terkoneksi gaes");
  // }
 
?>