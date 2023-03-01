<!--Start Including Header--> 
<?php
include('./dbConnection.php');
session_start();
if(!isset($_SESSION['stuLogEmail'])){
    echo "<script> location.href = 'loginorsignup.php' </script>";
}else{
    
    ?>
    
<?php }

?>
<!--End Including Header--> 