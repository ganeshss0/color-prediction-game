<?php
ob_start();
session_start();
?>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php include'head.php' ?>
<link rel="stylesheet" href="assets/css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="description" content="Bitter Mobile Template">
<meta name="keywords" content="bootstrap, mobile template, bootstrap 4, mobile, html, responsive" />
<script type="text/javascript">
let currentUrl = location.href;
history.replaceState('', '', 'login.php');
history.pushState('', '', currentUrl);
</script>
<style>
#alert .modal-dialog{padding:20px; margin-top:130px;}
#registertoast .modal-dialog{padding:0px; margin-top:130px;}
.appHeader1 {
	background-color: #F5F5F5;

}
 .btn { 
        color: white;
    height:45px; 
    border-radius:13px; 
    background-image: linear-gradient(
#ae18e3, 
#5b1474);
    
}
.textbox {
     box-shadow: 0px 0px;
  height: auto;
  width: 300;
  color: #fff;
  outline: none;
  border: none;
  border-radius: 8px;
  font-size: 17px;
  font-weight: 400;
  margin: 0px 0;
  cursor: pointer;
  transition: all 0.4s ease;
}
    
   
</style>
</head>

<body>

<!-- Page loading -->
<div class="loading" id="loading">
  <div class="spinner-grow"></div>
</div>
<!-- * Page loading --> 

<!-- App Header -->
<div class="appHeader1">
  <div class="left"> <a style="color: black;" href="login.php" class="icon goBack"> <i style="color: black;" class="icon ion-ios-arrow-back"></i> </a>
    <div class="pageTitle" style="color: black;">Reset Password</div>
  </div>
</div>
<!-- searchBox --> 

<!-- * searchBox --> 
<!-- * App Header --> 

<!-- App Capsule -->
<div id="appCapsule" class="pb-2">
  <div class="appContent1 pb-0">
    <form action="#" id="forgotform">
         <div style="border: 1px solid #EDEDED; margin-left: -20px; margin-right: -20px; padding-left: 20px; padding-right: 20px; padding: 20px;">
      <div class="inner-addon left-addon"> <i style="font-size: 30px; margin-top: -5px;" class="icon ion-md-phone-portrait"></i>
        <input style="padding-left: 60px;" type="tel" class="form-control textbox" placeholder="Mobile Number" id="fmobile" maxlength="10" name="fmobile" onKeyPress="return isNumber(event)">
        <input type="hidden" name="type" id="type" value="chkmobile">
      </div>
      <div class="text-center mt-3">
        <button type="submit"  style="width:80%; border-radius: 5px; border: white; height:55px; font-weight: 400; font-size: 17px; background-color: #00b8a9; color: white;">Continue</button> 
      </div></div>
    </form>
  
</div>
<!-- appCapsule -->

<?php include("include/footer.php");?>
  <div id="otpform" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content ">
      <div class="modal-body">
    <button type="button" id="otpclose" class="close" data-dismiss="modal" aria-label="Close">
       <span aria-hidden="true">×</span></button>
       <p><strong>Plese Enter OTP</strong></p>
        <div class="pt-2">
   <form action="#" method="post" id="otpsubmitForm">
  <input type="tel" id="otp" name="otp" class="form-control" placeholder="Enter OTP" onKeyPress="return isNumber(event)" >
     <input type="hidden" id="userid" name="userid" value="">
      <input type="hidden" name="type" id="type" value="otpval">
      <div class="text-center mt-3">
             <button type="submit" style="width:80%;border: white; border-radius: 5px; height:55px; font-weight: 400; font-size: 17px; background-color: #00b8a9; color: white;">Submit OTP</button> 
        </div>
        </form>          
        </div>
      </div>
    </div>
  </div>
</div>
<div id="registertoast" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content ">
      <div class="modal-body">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
       <span aria-hidden="true">×</span></button>
        <div class="text-center" id="regtoast">          
        </div>
      </div>
    </div>
  </div>
</div>
<div id="alert" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-body" id="alertmessage"> </div>
      <div class="text-center pb-1">
    <a type="button" class="text-info" data-dismiss="modal">OK</a>
    </div> 
    </div>
  </div>
</div>
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
  <script src="assets/js/forgot-password.js"></script>
</body>
</html>