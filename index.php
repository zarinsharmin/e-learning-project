<!--Start Including Header--> 
<?php
include('./mainInclude/header.php');
include('./dbConnection.php');
?>
<!--End Including Header--> 

<!--Start Video Background-->
<div class="container-fluid remove-vid-marg">
    <div class="vid-parent">
        <video playsinline autoplay muted loop>
            <source src="video/webvideo.mp4">
        </video>
        <div class="vid-overlay">
        </div>
    </div>
    <div class="vid-content">
        <h1 class="my-content">Welcome to iLearning</h1>
        <small class="my-content">Learn and Implement</small><br><br>
        <?php
        if(!isset($_SESSION['is_login'])){
            echo '<a href="#" class="btn btn-danger mt-3" data-toggle="modal" data-target="#stuRegModalCenter">Get Started</a>';
        }else{
            echo '<a href="student/studentProfile.php" class="btn-primary mt-3">My Profile</a>';
        } 
        ?>
        
        
    </div>
</div>
<!--End Video Background-->

<!--Start Text Banner-->
<div class="container-fluid bg-danger txt-banner">
    <div class="row bottom-banner">
        <div class="col-sm">
            <h5><i class="fas fa-book-open mr-3"></i> 100+ Online Courses</h5>
        </div>
        <div class="col-sm">
            <h5><i class="fas fa-users mr-3"></i> Expert Instructors</h5>
        </div>
        <div class="col-sm">
            <h5><i class="fas fa-keyboard mr-3"></i> Lifetime Access</h5>
        </div>
        <div class="col-sm">
            <h5><i class="fas fa-dollar-sign mr-3"></i> Money Back Guarantee</h5>
        </div>
    </div>
</div>
<!--End Text Banner-->

<!--Start Most Popular Course-->
<div class="container mt-5">
    <h1 class="text-center">Popular Courses</h1>
    
    <!--Start Most Popular Course first card deck-->
    <div class="card-deck mt-4">
        <?php
        $sql = "SELECT * FROM course LIMIT 3";
        $result = $conn->query($sql);
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $course_id = $row['course_id'];
                echo '<a href="coursedetails.php?course_id='.$course_id.'" class="btn" style="text-align: left; padding:0px; margin:0px;">
            <div class="card"><img src="' . str_replace('..', '.',$row['course_img']).'" class="card-img-top" alt="Python" />
                <div class="card-body">
                    <h5 class="card-title">'.$row['course_name'].'</h5>
                    <p class="card-text">'.$row['course_desc'].'</p>
                </div>
                <div class="card-footer">
                    <p class="card-text d-inline">Price: <small><del>&#36; '.$row['course_original_price'].'</del></small> <span class="font-weight-bolder">&#36; '.$row['course_price'].'</span></p>
                    <a class="btn btn-primary text-white font-weight-bolder float-right" href="coursedetails.php?course_id='.$course_id.'">Enroll</a>
                </div>
            </div>
        </a> ';
            }
        }
        ?>
  
    </div>
<!-- End Most Popular Course First Card Deck-->
    
    <!-- Start Most Popular Course Second Card Deck-->
    <div class="card-deck mt-4">
                <?php
        $sql = "SELECT * FROM course LIMIT 3, 3";
        $result = $conn->query($sql);
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $course_id = $row['course_id'];
                echo '<a href="coursedetails.php?course_id='.$course_id.'" class="btn" style="text-align: left; padding:0px; margin:0px;">
            <div class="card"><img src="' . str_replace('..', '.',$row['course_img']).'" class="card-img-top" alt="Python" />
                <div class="card-body">
                    <h5 class="card-title">'.$row['course_name'].'</h5>
                    <p class="card-text">'.$row['course_desc'].'</p>
                </div>
                <div class="card-footer">
                    <p class="card-text d-inline">Price: <small><del>&#36; '.$row['course_original_price'].'</del></small> <span class="font-weight-bolder">&#36; '.$row['course_price'].'</span></p>
                    <a class="btn btn-primary text-white font-weight-bolder float-right" href="coursedetails.php?course_id='.$course_id.'">Enroll</a>
                </div>
            </div>
        </a> ';
            }
        }
        ?>
    </div>
<!-- End Most Popular Course First Card Deck-->
    
    <div class="text-center m-2">
        <a class="btn btn-danger btn-sm" href="courses.php">View All Course</a>
    </div>
</div>
<!--End Most Popular Course-->

<!--Start Contact us-->
<?php
include('./contact.php');
?>
<!--End Contact us-->


<!--Start Social Follow-->
<div class="container-fluid bg-danger">
    <div class="row text-white text-center p-1">
        <div class="col-sm">
            <a class="text-white social-hover" href="#"><i class="fab-fa-facebook-f"></i> Facebook</a></div>
        <div class="col-sm">
            <a class="text-white social-hover" href="#"><i class="fab-fa-twitter"></i> Twitter</a>
            </div>
        <div class="col-sm">
            <a class="text-white social-hover" href="#"><i class="fab-fa-whatsapp"></i> Whatsapp</a></div>
        <div class="col-sm">
            <a class="text-white social-hover" href="#"><i class="fab-fa-instagram"></i> Instagram</a>
            </div>
    </div>
</div>
<!--End Social Follow-->

    <!--Start About Section-->
    <div class="container-fluid p-4" style="background-color: #e9ecef;">
        <div class="container" style="background-color: #e9ecef;">
            <div class="row text-center">
                <div class="col-sm">
                    <h5>About Us</h5>
                    <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                        been the industry's standard dummy text ever since the 1500s, when an unknown printer took a
                        galley of type and scrambled it to make a type specimen book.</p>
                </div>
                <div class="col-sm">
                    <h5>Category</h5>
                    <a class="text-dark" href="#">Web Development</a><br />
                    <a class="text-dark" href="#">Web Designing</a><br />
                    <a class="text-dark" href="#">Android Development</a><br />
                    <a class="text-dark" href="#">iOS Development</a><br />
                    <a class="text-dark" href="#">Data Analysis</a><br />
                </div>
                <div class="col-sm">
                    <h5>Contact Us</h5>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                        been the industry's standard dummy text ever since the 1500s, when an unknown printer took a
                        galley of type and scrambled it to make a type specimen book.</p>
                </div>
            </div>
        </div>
    </div>
    <!--End About Section-->
    


<!--Start Including Footer-->    
<?php
include('./mainInclude/footer.php');
?>
<!--End Including Footer--> 