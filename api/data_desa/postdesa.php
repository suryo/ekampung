<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/ekampung/koneksi.php";
if (function_exists($_GET['function'])) {
   $_GET['function']();
}
function insert_desa()
{
   global $koneksi;
   $rawdata = file_get_contents("php://input");
   $jsonRS = json_decode($rawdata, true);
   $data = array($jsonRS);
   $id = ($data[0]["id"]);
   $nama_desa = ($data[0]["nama_desa"]);
   $alamat_desa = ($data[0]["alamat_desa"]);
   //var_dump(count($nama_desa));
   $arrayresult = [];
   for ($x = 0; $x <= count($id) - 1; $x++) {
      $result = mysqli_query($koneksi, "INSERT INTO data_desa SET
               nama_desa = '" . $nama_desa[$x] . "',
               alamat_lengkap = '" . $alamat_desa[$x] . "'");

      // echo "coba";

      if ($result) {
         $response = array(
            'status' => 1,
            'message' => 'Insert Success'
         );
         array_push($arrayresult, $response);
      } else {
         $response = array(
            'status' => 0,
            'message' => 'Insert Failed.'
         );
         array_push($arrayresult, $response);
      }
   }

   header('Content-Type: application/json');
   echo (json_encode($arrayresult));


   // foreach ($jsonRS as $rs) {
   //   echo stripslashes($rs["player_name"])." ";
   //   echo stripslashes($rs["country"])." ";
   //   echo stripslashes($rs["sports"])."<br>";
   // }
   // $data = array($rawdata);
   // echo $data[0]["id"][0];
   // for ($x = 0; $x <= count($data); $x++) {
   //    echo $data[$x]."<br>";
   //  } 
   // var_dump(array($rawdata));

   //var_dump(json_decode($rawdata));

   // $check = array('id_desa' => '', 'nama_desa' => '', 'alamat_lengkap' => '', 'deskripsi' => '');
   // $check_match = count(array_intersect_key($_POST, $check));
   // if($check_match == count($check)){

   //       $result = mysqli_query($koneksi, "INSERT INTO data_desa SET
   //       id_desa = '$_POST[id_desa]',
   //       nama_desa = '$_POST[nama_desa]',
   //       alamat_lengkap = '$_POST[alamat_lengkap]',
   //       deskripsi = '$_POST[deskripsi]'");

   //       echo "coba";

   //       if($result)
   //       {
   //          $response=array(
   //             'status' => 1,
   //             'message' =>'Insert Success'
   //          );
   //       }
   //       else
   //       {
   //          $response=array(
   //             'status' => 0,
   //             'message' =>'Insert Failed.'
   //          );
   //       }
   // }else{
   //    $response=array(
   //             'status' => 0,
   //             'message' =>'Wrong Parameter'
   //          );
   // }
   // header('Content-Type: application/json');
   // echo json_encode($response);
}
