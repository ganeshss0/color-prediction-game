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

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">



<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<link href="assets/css/dataTables.bootstrap.min.css" rel="stylesheet"/>


    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    
    <script charset="utf-8" src="/chunk.layouts.def07d02.js"></script>
    <script charset="utf-8" src="/chunk.app.def07d02.js"></script>
    <script charset="utf-8" src="/chunk.vuejs.def07d02.js"></script>
    <script charset="utf-8" src="/chunk.pages.def07d02.js"></script>
    <link rel="stylesheet" type="text/css" href="/pages__member.def07d02.css" />
    <script charset="utf-8" src="/chunk.pages__member.def07d02.js"></script>
<style>





h3{ font-weight:normal; font-size:14px;}

.btn { 
       
    height:45px; 
    width:264px;background-color:#00B8A9;color:white;
    
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
 
.button {
    display: inline-block;
    margin: 5px;
    width: auto;
    height: auto;
    font-size: 20px;
    font-weight: bold;
    border-radius: 5px;
    box-sizing:border-box;
    font-family: Orbitron;
}
.digits {
    color: #181818;
    text-shadow: 1px 1px 0px #FFF;
    background-color: #EBEBEB;
    border-top: 2px solid #FFF;
    border-right: 2px solid #FFF;
    border-bottom: 2px solid #C1C1C1;
    border-left: 2px solid #C1C1C1;
    border-radius: 4px;
    box-shadow: 0px 0px 2px #030303;
}
.digits:hover,
.mathButtons:hover,
#clearButton:hover {
    background-color: #FFBA75;
    box-shadow: 0px 0px 2px #FFBA75, inset 0px -20px 1px #FF8000;
    border-top: 2px solid #FFF;
    border-right: 2px solid #FFF;
    border-bottom: 2px solid #AE5700;
    border-left: 2px solid #AE5700;
}
 .btn1 { 
        color: black;
    height:45px; 
    width: 75px;
    border-radius:1px; 
    margin-top: 5px;
     margin-bottom: 5px;
      margin-left: 5px;
       margin-right: 5px;
       
   background: url(/bg.jpg);
    
}
.btn2 { 
        color: black;
    height:45px; 
    width: 75px;
    border-radius:15px; 
    padding-top: 5px;
     padding-bottom: 5px;
      padding-left: 15px;
       padding-right: 15px;
       
   background-color: #F8F3D4;
    
}
.vcard {
	box-shadow:true;
}
label{ display: flex;
  flex-direction: column;
  align-items: center;
  padding: 0 10px;
  color: #291F53;
  margin-bottom: 0px;
  font-size: 20px;
}
</style>
</head>

<body>
<?php
include("include/connection.php");
$userid=$_SESSION['frontuserid'];?>


<!-- App Header -->
<div class="appHeader1" style="box-shadow:none;background-color:#ffb700 !important">
  <div class="left"> <a href="#" onClick="goBack();" class="icon goBack"> <i class="icon ion-md-arrow-back"></i> </a>
    <div class="pageTitle">Recharge</div>
  </div>
</div>



<!-- * App Header --> 
<!-- App Capsule -->
<div id="appCapsule">
  <div class="appContent1">
<h5 class="text-center m-2">Balance: <span>₹ <?php echo number_format(wallet($con,'amount',$userid), 2);?></span></h5><hr>
    <div style="border: 1px solid #EDEDED; margin-left: -20px; margin-right: -20px; padding-left: 20px; padding-right: 20px; padding: 20px;">
    <form  name="calculator" action="#" id="paymentForm" method="post" class="card-body " autocomplete="off"> <br>
      <div class="inner-addon left-addon">
     <i style="font-size: 30px; margin-top: -5px;"  class="icon ion-md-wallet">&emsp;&emsp;</i>
       <input style="padding-left: 60px;" type="number" id="userammount" name="userammount" class="form-control textbox" placeholder=" &nbsp;Enter recharge amount" onKeyPress="return isNumber(event)" >
      </div><hr>
            <div>
    <p style="color: 808080; font-size:11px;"><strong>Note:</strong> Minimmum Recharge = 200  
<!--     <a href="https://telegram.dog/#" class="btn2 btn-sm btn-success m-0">Recharge Support</a>
 -->        <br> <br>
 </p>
        
 <center>  <b><input class="btn1 btn-sm btn-white" type="button" value="200" onclick="calculator.userammount.value = '200'">
      <input class="btn1 btn-sm btn-white" type="button" value="500" onclick="calculator.userammount.value = '500'">
      <input class="btn1 btn-sm btn-white" type="button" value="1000" onclick="calculator.userammount.value = '1000'"><br>
      <input class="btn1 btn-sm btn-white" type="button" value="2000" onclick="calculator.userammount.value = '2000'">
      <input class="btn1 btn-sm btn-white" type="button" value="5000" onclick="calculator.userammount.value = '5000'">
      <input class="btn1 btn-sm btn-white" type="button" value="10000" onclick="calculator.userammount.value = '10000'">
   </center> </b> </div>
</div>
    <div class="text-center mt-3">
        <button type="submit" class="btn btn-primary" style="width:264px;"> Recharge </button>
        </div>
        
      
    </form>
  </div>
</div>

<!-- appCapsule -->

<?php include("include/footer.php");?>
<div id="paymentdetail" class="modal fade" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content ">
      <div class="modal-body">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
       <span aria-hidden="true">×</span></button>
       <p>&nbsp;</p>
        <div class="">
        <form action="#" method="post" id="paymentdetailForm">
        <div class="inner-addon left-addon">
      <i style="font-size: 30px; margin-top: -5px;"  class="icon ion-md-person"></i>
  <input style="padding-left: 60px;" type="text" id="name" name="name" class="form-control textbox" placeholder="Enter Your Name">
      </div>
      <div class="inner-addon left-addon">
      <i style="font-size: 30px; margin-top: -5px;"  class="icon ion-md-phone-portrait"></i>
        <input style="padding-left: 60px;"type="tel" id="mobile" name="mobile" class="form-control textbox" placeholder="Enter Mobile Number"  value="<?php echo user($con,'mobile',$userid);?>" onKeyPress="return isNumber(event)">
   
      <input type="hidden" name="finalamount" id="finalamount" value="">
      <input type="hidden" name="action" id="action" value="paydetail">
      <div class="text-center mt-3">
        <button type="submit" class="btn" > Recharge </button>
        </div>
        </form>          
        </div>
      </div>
    </div>
  </div>
</div>
<script src="assets/js/lib/jquery-3.4.1.min.js"></script> 
<!-- Bootstrap--> 
<script src="assets/js/lib/popper.min.js"></script> 
<script src="assets/js/lib/bootstrap.min.js"></script> 
<!-- Owl Carousel --> 
<script src="assets/js/plugins/owl.carousel.min.js"></script> 
<!-- Main Js File --> 
<script src="assets/js/app.js"></script>
<script src="assets/js/jquery.validate.min.js"></script>
<script src="assets/js/payment.js.php"></script>
<script>
	window.oncontextmenu = function () {
				return false;
			}
			$(document).keydown(function (event) {
				if (event.keyCode == 123) {
					return false;
				}
				else if ((event.ctrlKey && event.shiftKey && event.keyCode == 73) || (event.ctrlKey && event.shiftKey && event.keyCode == 74)) {
					return false;
				}
			});
</script>
</body>

</html>
