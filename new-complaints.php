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

<link rel="stylesheet" href="assets/css/style.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<link href="assets/css/dataTables.bootstrap.min.css" rel="stylesheet"/>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  <?php include'head.php' ?>
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
.appHeader1 {
    	background-image: url("bg.jpg");
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

<div class="appHeader1" style="box-shadow:none;background-color:#ffb700 !important">
  <div class="left"> <a href="#" onClick="goBack();" class="icon goBack"> <i class="icon ion-md-arrow-back"></i> </a>
    <div class="pageTitle">New Support Ticket</div>
  </div>
</div>


 


<div class="col-md-12 mt-4">

 <!-- form start -->
              <form method="POST">


                <div class="card-body">




                	   <div class="form-group">
                  <label>Complaint For</label>
                  <select class="custom-select form-control-border" name="complaint_for" required>
                    <option value="">Please Select</option>
                    <option value="Orders">Orders</option>
                    <option value="Transaction">Transaction</option>
                   <option value="Promotion">Promotion</option>
                    <option value="Wallet">Wallet</option>
                    <option value="Bank Card">Bank Card</option>
                    <option value="Account Security">Account Security</option>
                    <option value="Suggestions">Suggestions</option>
                    <option value="Change Password">Change Password</option>
                    <option value="Other">Other</option>
                    
                  </select>
                </div>


                  <div class="form-group">
                      <input type="tel" class="form-control" name="complaint_subject" onKeyPress="return isNumber(event)"  maxlength="15"  maxlength="200" placeholder="WhatsApp Number" required>
                  </div>
                 
                 <div class="form-group">

				    <textarea class="form-control" name="complaint_text" placeholder="Please Describe your issue here." rows="4" required></textarea>
				  </div>
                 
<input type="hidden" name="complaint_id" value="<?php echo rand(99999,9999999); ?>">
 <input type="hidden" name="complaint_status" value="Under Review">              
              

               
                  </div>
               <p class="text-center m-2" Style="font-size:11px; color: black;">Customer service hours are Monday–Friday, 9 am – 5 pm . excluding major  holidays.</p>
                
                <!-- /.card-body -->
<div class="text-center mt-1">
                  <button type="submit" name="submit"class="btn btn-" style="width:264px;background-color:#00B8A9;color:white"  style="!important;">Submit</button>

                </div>


             
              </form>
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








<?php


if(isset($_POST['submit']))
{


$complaint_id = $_POST['complaint_id'];
$complaint_status = $_POST['complaint_status'];
$complaint_for = mysqli_real_escape_string($con, $_POST['complaint_for']);
$complaint_subject = mysqli_real_escape_string($con, $_POST['complaint_subject']); 

$complaint_text = mysqli_real_escape_string($con, $_POST['complaint_text']); 




$sql = "INSERT INTO complaint (user_id,complaint_id, complaint_for, complaint_subject,complaint_text,complaint_status)
VALUES ('$userid','$complaint_id', '$complaint_for', '$complaint_subject','$complaint_text','$complaint_status')";





if (!mysqli_query($con,$sql)) {
  // code...
echo '<script>
alert("Something Went Wrong");
window.location.href="complaint.php";
</script>';


}
else
{
  echo '<script>
alert("Complaint Save");
window.location.href="complaint.php";
</script>';

}

}




?>