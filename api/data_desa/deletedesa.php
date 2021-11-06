<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/ekampung/koneksi.php";
if (function_exists($_GET['function'])) {
   $_GET['function']();
}

function delete_desa()
{
   global $koneksi;
   $rawdata = file_get_contents("php://input");
   $jsonRS = json_decode($rawdata, true);
   $data = array($jsonRS);
   $id = ($data[0]["id"]);
   $arrayresult = [];
   for ($x = 0; $x <= count($id) - 1; $x++) {
      $result = mysqli_query($koneksi, "DELETE FROM data_desa WHERE id_desa=" . $id[$x]);
      if ($result) {
         $response = array(
            'status' => 1,
            'message' => 'deletd Success'
         );
         array_push($arrayresult, $response);
      } else {
         $response = array(
            'status' => 0,
            'message' => 'deletes Failed.'
         );
         array_push($arrayresult, $response);
      }
   }

   header('Content-Type: application/json');
   echo (json_encode($arrayresult));
}

