<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/ekampung/koneksi.php";
   if(function_exists($_GET['function'])) {
         $_GET['function']();
      }   
  
   function update_desa()
      {
         global $koneksi;
         $rawdata = file_get_contents("php://input");
         $jsonRS = json_decode($rawdata, true);
         $data = array($jsonRS);
         $id = ($data[0]["id"]);
         $nama_desa = ($data[0]["nama_desa"]);
         $alamat_desa = ($data[0]["alamat_desa"]);
         $arrayresult = [];
         for ($x = 0; $x <= count($id) - 1; $x++) {
            $result = mysqli_query($koneksi, "UPDATE data_desa SET
                     nama_desa = '" . $nama_desa[$x] . "',
                     alamat_lengkap = '" . $alamat_desa[$x] . "' WHERE id_desa = ".$id[$x]);
            if ($result) {
               $response = array(
                  'status' => 1,
                  'message' => 'update Success'
               );
               array_push($arrayresult, $response);
            } else {
               $response = array(
                  'status' => 0,
                  'message' => 'update Failed.'
               );
               array_push($arrayresult, $response);
            }
         }

         header('Content-Type: application/json');
         echo (json_encode($arrayresult));
      }
