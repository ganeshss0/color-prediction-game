<?php 
ob_start();
session_start();
if($_SESSION['frontuserid']=="")
{header("location:login.php");exit();}?>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php include'head.php' ?>
<link rel="stylesheet" href="assets/css/style.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<link href="assets/css/dataTables.bootstrap.min.css" rel="stylesheet"/>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  <title>Bank</title>
<link rel="icon" href="/assets/site_logo.png" type="image/gif" sizes="32x32">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
     <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
  body {
	-ms-user-select:text;
	user-select:text;
	-moz-user-select:text;
	-webkit-user-select:text
}
.appHeader1 {
    	background-image: url("bg.jpg");
}
.card {
    border: 1px solid #E5E9F2;
    border-radius: 3px;
    padding: 0px;
}
.card .card-title {
    margin-bottom: 7px;
}
h3{ font-weight:normal; font-size:20px;}
h4{ font-weight:normal; font-size:18px; color:#858585;}
.card-body{ padding:.6rem;}
td{ padding:3px;}
.btn-sm {
    height: 26px;
    padding: 0px 12px;
}
.form-control{box-shadow:none; border-bottom:#ccc solid 1px; margin-bottom:3px;}
#alert h4{font-size: 1rem; font-weight:bold; color:#333;}
#alert p{font-size: 13px; margin-top:20px;}
#alert .modal-content{border-radius:3px}
#alert .modal-dialog{padding:20px; margin-top:130px;}

label{ color:#999;}
#bonus .modal-dialog{margin-top:100px;}
#bonus .modal-footer{ border:none;}
.dropdown-menu{ background:#fff;top: -15px;
left: -145px; border:none;
border-radius:0px;
-webkit-box-shadow: 0 3px 1px -2px rgba(0, 0, 0, .2), 0 2px 2px 0 rgba(0, 0, 0, .14), 0 1px 5px 0 rgba(0, 0, 0, .12);
box-shadow: 0 3px 1px -2px rgba(0, 0, 0, .2), 0 2px 2px 0 rgba(0, 0, 0, .14), 0 1px 5px 0 rgba(0, 0, 0, .12);}
.appHeader1 .right{right:20px;}
.dropdown-item {
    padding: .75rem 1.5rem;
}
</style>
</head>

<body onselectstart="return false" style="background-color: #f1f1f1; color: #333;">
<?php
include("include/connection.php");
$userid=$_SESSION['frontuserid'];
?>

<!-- App Header -->
<div class="appHeader1"  style="box-shadow:none;background-color:#ffb700 !important">
  <div class="left"> <a href="myaccount.php" onClick="goBack();" class="icon goBack"> <i class="far fa-chevron-left" style="margin: 10px;color: white;position: absolute;font-size: 18px;" ></i> </a>
    <div class="pageTitle" >Support Tickets</div>
  </div>
  
  <div class="right"> 
  <div class="dropdown">
  <a class="" href="new-complaints.php" role="button" style="font-size:20px; color: white;">
    <i class="fa fa-plus" ></i></a>
  

  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <a class="dropdown-item" href="#">New Complain</a>

  </div>
</div>
  </div>
</div>



<div class="list-group mb-5 pb-5">

<?php

$result = mysqli_query($con,"SELECT * FROM complaint where user_id = $userid order by id DESC");
?>

<?php
if (mysqli_num_rows($result) > 0) {
?>
 
<?php
$i=0;
while($row = mysqli_fetch_array($result)) {
?>
                <!-- <td><?php echo $i+1; ?></td>
                    <td><?php echo $row["1"]; ?></td> -->
 
  <a href="view-complaint.php?complaint_id=<?php echo $row["complaint_id"]; ?>" class="list-group-item list-group-item-action flex-column align-items-start">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1"><?php echo $row["complaint_status"]; ?></h5>
     <small><?php echo $row["complaint_for"]; ?></small>
    </div>
    <p class="mb-1"><?php echo $row["complaint_subject"]; ?></p>
    <small><?php echo $row["complaint_time"]; ?></small>
  </a>



    
<?php
$i++;
}
?>


 <?php
}
else{
    echo "";
}
?>
       



</div>

</div>


<?php include("include/footer.php");?>


<!-- Jquery --> 
<script src="assets/js/lib/jquery-3.4.1.min.js"></script> 
<!-- Bootstrap--> 
<script src="assets/js/lib/popper.min.js"></script> 
<script src="assets/js/lib/bootstrap.min.js"></script> 
<!-- Owl Carousel --> 
<script src="assets/js/plugins/owl.carousel.min.js"></script> 
<!-- Main Js File --> 
<script src="assets/js/app.js"></script>
<script src="assets/js/jquery.validate.min.js"></script>
<script src="assets/js/bonus.js"></script>

</body>
</html>