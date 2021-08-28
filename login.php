<?php 
include 'koneksi.php';

$username = $_POST['username'];
$password = md5($_POST['password']);

$login = mysqli_query($koneksi,"select * from user where username='$username' and password='$password'");
echo "select * from user where username='$username' and password='$password'";
$cek = mysqli_num_rows($login);

echo $username;
echo $password;
echo $cek;
if($cek > 0){
	session_start();
	$_SESSION['username'] = $username;
	$_SESSION['status'] = "login";
    
	header("location:admin/dashboard.php");
}else{
   
	header("location:index.php");	
}

?>