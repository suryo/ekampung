<?php
//https://www.indonetsource.com/cara-membuat-rest-api-dengan-php-native-dan-mysql/
// https://aarafacademy.com/read-write-json-file-php-mysql/
require_once $_SERVER['DOCUMENT_ROOT'] . "/ekampung/koneksi.php";
// echo $_SERVER['DOCUMENT_ROOT']."/ekampung/koneksi.php";  
if (function_exists($_GET['function'])) {
   $_GET['function']();
}
function get_desa()
{
   global $koneksi;
   $query = $koneksi->query("SELECT * FROM desa");
   while ($row = mysqli_fetch_object($query)) {
      $data[] = $row;
   }
   $response = array(
      'status' => 1,
      'message' => 'Success',
      'data' => $data
   );
   header('Content-Type: application/json');
   echo json_encode($response);
}
