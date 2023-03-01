<!--Start Including Header--> 
<?php
include('./mainInclude/header.php');
?>
<!--End Including Header--> 

<!--Start Course Page Banner-->
<div class="container-fluid bg-dark">
<div class="row">
<img src="./img/coursebanner.jpg" alt="courses" style="height:500px; width:100%; object-fit:cover; box-shadow:10px;"/>
</div>
</div>
<!--End Course Page Banner-->


<!--Start Main Content-->
<div class="container">
    <h2 class="text-center my-4">Payment Status </h2>
    <form method="post" action="">
        <div class="form-group row">
            <label class="offset-sm-3 col-form-label"> Order ID: </label>
            <div>
                <input type="text" class="form-control mx-3">
            </div>
            <div>
                <input type="submit" class="btn btn-primary mx-4" value="View">
            </div>
        </div>
    </form>
</div>
<!--End Main Content-->


<!--Start Contact us-->
<div class="container">
<?php
    include('./contact.php');
    ?>
</div>
<!--End Contact us-->

<!--Start Including Footer-->    
<?php
include('./mainInclude/footer.php');
?>
<!--End Including Footer--> 