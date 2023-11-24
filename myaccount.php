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
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<style>

.appHeader1 {
	background-color: #fff !important;
	border-color: #fff !important;
}

* {
  box-sizing: border-box;
}
/* Create two equal columns that floats next to each other */
.column1 {
    padding-left: 15px;
    padding-right: 15px;
    width: calc(100% / 3);
    float: left;
   /* Should be removed. Only for demonstration */
}
/* Clear floats after the columns */
.row1:after {
  content: "";
  display: table;
  clear: both;
      margin-bottom: -0.50cm;
}
/* Create two equal columns that floats next to each other */
.column {
  float: center;
  width: calc(100% / 2);
   /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

.appContent3 {
	background-color: #ffb700 !important;
	border-color: #ffb700 !important;
	padding:20px;
	font-size:16px;
    border-radius: 20px 20px 20px 20px;
	box-shadow: 0 4px 8px 0 rgb(0 0 0 / 21%);
}
.user-block img {
	width: 40px;
	height: 40px;
	float: left;
	margin-right:10px;
		margin-top:-10px;
	background:#333;
}
.img-circle {
	border-radius: 50%;
}
.accordion .btn-link {
	box-shadow:none;
	padding:8px !important;
	margin:0px 0px;
	color: #333 !important;
	font-size: 17px;
	font-weight: normal;
	border-top:solid 1px #ccc;
}
.accordion .collapsed {
	border:none;
}
.accordion .show {
	border-bottom:solid 1px #ccc;
}
.accordion .sub-link {
	box-shadow:none;
	padding:8px !important;
	color: #333 !important;
	font-size: 14px;
	font-weight: normal;
	display:block;
}
.accordion .sub-link:hover {
color:#00F !important;
}
.accordion .btn-link:hover {
	background:#F5F5F5;
}
.accordion .btn-link {
	position: relative;
}
.btn3 {
   background-color: #FFD700;
    border-radius: 15px 15px 15px 15px;
    border: 1px solid white;
  padding-bottom: 4px;
  padding-top: 4px;
  padding-left: 25px;
  padding-right: 25px;
    transition: 0.5s;
    
}
 .accordion .btn-link::after {
 content: "\f105";
 color: #333;
 top: 8px;
 right: 9px;
 position: absolute;
 font-family: "FontAwesome";
 font-size:24px;
}
.btn1 {
    border-radius: 15px 0px 15px 0px;
    border: 2px solid white;
  padding-bottom: 4px;
  padding-top: 4px;
  padding-left: 25px;
  padding-right: 25px;
    transition: 0.5s;
    
}
.right{
    float:right;
}
.btn2 {
    border-radius: 5px 05px 5px 5px;
    border: 2px solid white;
  padding-bottom: 4px;
  padding-top: 4px;
  padding-left: 30px;
  padding-right: 30px;
    transition: 0.5s;
    
}

 .accordion .btn-link[aria-expanded="true"]::after {
 content: "\f106";
}
.light{
    height: 24px;
    padding: 0px 0px;
	margin: 5px 2px;
	border-radius: 20px;
width: 24px;}
.light1{
    height: 26px;
    padding: 0px 0px;
	margin: 5px 2px;
	border-radius: 20px;
width: 26px;}

.vcard {
    box-shadow:none;
}


</style>
</head>

<body>
<?php
include("include/connection.php");
$userid=$_SESSION['frontuserid'];
$selectruser=mysqli_query($con,"select * from `tbl_user` where `id`='".$userid."'");
$userresult=mysqli_fetch_array($selectruser);
$selectwallet=mysqli_query($con,"select * from `tbl_wallet` where `userid`='".$userid."'");
$walletResult=mysqli_fetch_array($selectwallet);
?>
<!-- Page loading -->
<div class="loading" id="loading">
  <div class="spinner-grow"></div>
</div>
<!-- * Page loading --> 

<!-- App Header -->












<div class="vcard"> 
  <div class="appContent3 text-white">
    <div class="row">
      <div class="col-12 mb-1">
        <div class="user-block"> <img class="img-circle img-bordered-lg" src="assets/img/avatar.svg"> </div>
        User ID: <?php echo sprintf("%06d",user($con,'mobile',$userid));?>
        </br>
        Available Balance: ₹ <?php echo number_format(wallet($con,'amount',$userid), 2);?>
        </div>
        
      
 
    </div>
      </div>
   </div>
   </div>
   </div>
   </div>  
      
      <div class="row1">
  <div class="column1 vcard"><br>
      <a href="recharge.php" style="color:black;"> <center><span style="font-size:14px;"><i style="color:#5b1474;font-size:30px;" class="fa fa-credit-card"></i><br>Recharge<span></span></span></center></a></div>  
      
      <div class="column1 vcard"><br>
    <a href="withdrawal.php" style="color:black;">  <center><span style="font-size:14px;"> <i style="color:#5b1474;font-size:30px;" class="icon ion-md-wallet"></i><br>Withdraw<span></span></span></center></a></div> 
    
    <div class="column1 vcard"><br>
      <a href="order.php" style="color:black;"><center><span style="font-size:14px;"> <i style="color:#5b1474;font-size:30px;" class="fa fa-google-wallet"></i><br>All Orders<span></span></span></center></a></div></div>
      
<!-- searchBox --> 

<!-- * searchBox --> 
<!-- * App Header --> 

<!-- App Capsule -->
<div class="appContent1 mb-5">
  <div class="contentBox long mb-3">
    <div class="contentBox-body card-body"> 
      
      <!-- listview -->
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________ </p>      
      <div class="accordion" id="accordionExample">
          <div class="card-header">
            <h2 class="mb-0"> 
             
             <a href="transactions.php" class="btn btn-link collapsed fa fa-list-alt text-primary" style="font-size:20px"></i>
           Transcations History </a> </h2>
             
             
             
          </div>
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________ </p>             
          <div class="card-header">
            <h2 class="mb-0"> 
             <a href="rechargehistory.php" class="btn btn-link collapsed fa fa-list-alt text-primary" style="font-size:20px"></i>
           Recharge History </a> </h2>
          </div>
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________ </p>   

<div class="card-header">
          <h2 class="mb-0"> 
          <a href="withdrawalrecord.php" class="btn btn-link collapsed fa fa-list-alt text-primary" style="font-size:20px"></i>
           Withdrawal History </a> </h2>
          </div>
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________</p>

<div class="card-header">
            <h2 class="mb-0"> 
             <a href="complaint.php" class="btn btn-link collapsed fa fa-list-alt text-primary" style="font-size:20px"></i>
           Support Tickets </a> </h2>
          </div>
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________ </p>   

          <div class="card-header">
          <h2 class="mb-0"> 
          <a href="promotion.php" class="btn btn-link collapsed fa fa-share-square-o text-primary" style="font-size:20px"></i>
           Refer And Earn </a> </h2>
          </div>
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________</p> 

<div class="card-header">
            <h2 class="mb-0"> 
             <a href="manage_bankcard.php" class="btn btn-link collapsed fa fa-bank text-primary" style="font-size:20px"></i>
           Bank Card </a> </h2>
           </div> 
          <!--<div class="card-header">-->
          <!--  <h2 class="mb-0"> <a href="#" class="btn btn-link collapsed"> Share </a> </h2>-->
          <!--</div>-->
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________ </p>           
        <div class="card-header" id="headingThree">
          <h2 class="mb-0"> <a href="#" class="btn btn-link collapsed fa fa-shield text-primary" style="font-size:20px" type="button" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour"> Account Security </a> </h2>
        </div>
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________ </p>   
        <div id="collapsefour" class="collapse">
      <a href="forgot-password.php" class="sub-link"> Reset Password </a>
        </div>

<p style="color: white; font-size:11px;" ><strong>_____________________________________________________________________<div class="card-header">
            <h2 class="mb-0"> 
             </h2>
          </div>          
         </div>
      <!-- * listview --> 
      </div>
  </div>
   <!-- app Footer -->
  <div class="text-center mt-4"> <a href="logout.php" class="btn btn-sm btn-light" style="width:200px; background-image: linear-gradient(
#29B6F6, 
#29B6F6);">Logout</a> </div>
  <!-- * app Footer --> 
  
</div>
<!-- appCapsule -->
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
</body>
</html>
  