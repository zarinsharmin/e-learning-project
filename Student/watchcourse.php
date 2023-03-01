<?php
if(!isset($_SESSION)){
    session_start();
}
include('./admininclude/header.php');
include('../dbConnection.php');

if(isset($_SESSION['is_admin_login'])){
    $adminEmail = $_SESSION['adminLogEmail'];
    
}else{
    echo"<script> location,href='../index.php';</script>";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Watch Course</title>

    <!--Bootstrap CSS-->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!--Font Awesome CSS-->
    <link rel="stylesheet" href="css/all.min.css">


    <!--Google Font-->
    <link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@1,700&display=swap" rel="stylesheet">

    <!--Custom CSS-->
    <link rel="stylesheet" href="css/style.css">


    <title>iLearning</title>
</head>

<body>
    
    <div class="container-fluid bg-success p-2">
    <div class="row">
        <div class="col-sm-3 border-right">
        <h4 class="text-center">Lessons</h4>
            <ul id="playlist" class="nav flex-column">
            <?php 
                if(isset($_GET['course_id'])){
                    $course_id = $_GET['course_id'];
                    $sql= "SELECT * FROM lesson WHERE course_id = '$course_id'";
                    $result = $conn->query($sql);
                    if($result->num_rows > 0){
                        while($row = $result->fetch_assoc()){
                            echo '<li class="nav-item border-bottom py-2" movieurl = '.$row['lesson_link'].' style="cursor:pointer;"> '.$row['lesson_name'].'</li>';
                        }
                    }
                }
                ?>
            </ul>
        </div>
        <div class="col-sm-8">
            <video id="videoarea" src="" class="mt-5 w-75 ml-2" controls>
            </video>
        </div>
    </div>
    </div>
    
    
    <!--Jquery and Bootstrap Javascript-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!--Font Awesome JS-->
    <script src="js/all.min.js"></script>

    <!--Student Ajax Call JavaScript-->
    <script type="text/javascript" src="js/ajaxrequest.js"></script>
<!--Admin Ajax Call JavaScript-->
    <script type="text/javascript" src="js/adminajaxrequest.js"></script>

    <!--Custom JavaScript-->
    <script type="text/javascript" src="js/custom.js"></script>
    
</body>
</html>