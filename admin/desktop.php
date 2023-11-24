<?php 
ob_start();
session_start();
if($_SESSION['userid']=="")
{
	header("location:index.php?msg1=notauthorized");
	exit();
}
	
	?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin Panel By WebTechz</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-red sidebar-mini">
<div class="wrapper">
<?php include ("include/connection.php");?>
<?php include ("include/header.inc.php");?>
  <!-- Left side column. contains the logo and sidebar -->
 <?php include ("include/navigation.inc.php");
function counter($table){
$rs=mysql_query("select count(*) from `$table`");
$row = mysql_fetch_row($rs);
return $row["0"];
} 
 
 ?> 

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="desktop.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container">
      <!-- Small boxes (Stat box) -->
      <div class="row">


        <div style="background-color: #FCFFFF;  padding: 20px; border: 1px solid black; border-radius:10px; margin: 10px;" class="dashboard_box blue_bg col-md-3 border-radius">

          <h4 class="gradiant_bg dashboard_icon"style="text-align:left" ><i class="fa fa-inr"  aria-hidden="true"></i></h4>


          <div class="title">
            <p class="text-title" style="text-align:left">User Balance</p>
            <h4 class="text-amount" style="text-align:left">₹ <?php



$result = mysqli_query($con,"SELECT sum(amount) as 'wallt' FROM tbl_wallet where amount > 0");
?>

<?php
if (mysqli_num_rows($result) > 0) {
  $row = mysqli_fetch_array($result);

  $zero_bl = $row["wallt"];
              
              
                 echo  number_format($zero_bl,2); 
                    
}

else 
{
  echo "0.00";
}
?></h4>

          </div>

<a href="manage_user.php">
               <div class="panel-footer">
                  <span class="pull-left">See in Detail</span>
                  <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                  <div class="clearfix"></div>
               </div>
            </a>
      </div>
 

  


 <div style="background-color: #FCFFFF; margin: 10px; padding: 20px; border: 1px solid black; border-radius:10px;" class="dashboard_box blue_bg col-md-3 border-radius">

          <h4 class="gradiant_bg dashboard_icon" style="text-align:left" ><i class="fa fa-user" aria-hidden="true"></i></h4>


          <div class="title">
            <p class="text-title" style="text-align:left">Total User</p>
            <h4 class="text-amount" style="text-align:left"><?php



$result = mysqli_query($con,"SELECT count(*) as 'total_user' FROM tbl_user where status = 1");
?>

<?php
if (mysqli_num_rows($result) > 0) {
  $row = mysqli_fetch_array($result);

  $total_user = $row["total_user"];
              echo "$total_user";                  
                    
}

else 
{
  echo "0";
}
?></h4>

          </div>

<a href="manage_user.php">
               <div class="panel-footer">
                  <span class="pull-left">See in Detail</span>
                  <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                  <div class="clearfix"></div>
               </div>
            </a>
      </div>


       <div style="background-color: #FCFFFF; margin: 10px; padding: 20px; border: 1px solid black; border-radius:10px;" class="dashboard_box blue_bg col-md-3 border-radius">

          <h4 class="gradiant_bg dashboard_icon" style="text-align:left" ><i class="fa fa-inr" aria-hidden="true"></i></h4>


          <div class="title">
            <p class="text-title" style="text-align:left">Pending Recharges</p>
            <h4 class="text-amount" style="text-align:left">₹ <?php



$result = mysqli_query($con,"SELECT  sum(amount) as '2' FROM deposits  where status = '1'");
?>

<?php
if (mysqli_num_rows($result) > 0) {
  $row = mysqli_fetch_array($result);

  $pending = $row["2"];
              echo  number_format($pending);             
                    
}

else 
{
  echo "0";
}
?></h4>

          </div>

<a href="depositupdate.php">
               <div class="panel-footer">
                  <span class="pull-left">See in Detail</span>
                  <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                  <div class="clearfix"></div>
               </div>
            </a>
      </div>

       <div style="background-color: #FCFFFF; margin: 10px; padding: 20px; border: 1px solid black; border-radius:10px;" class="dashboard_box blue_bg col-md-3 border-radius">

          <h4 class="gradiant_bg dashboard_icon" style="text-align:left" ><i class="fa fa-inr" aria-hidden="true"></i></h4>


          <div class="title">
            <p class="text-title" style="text-align:left">Success Recharge</p>
            <h4 class="text-amount" style="text-align:left">₹ <?php



$result = mysqli_query($con,"SELECT  sum(amount) as 'pending' FROM tbl_walletsummery  where actiontype = 'recharge'");
?>

<?php
if (mysqli_num_rows($result) > 0) {
  $row = mysqli_fetch_array($result);

  $pending = $row["pending"];
              echo number_format($pending,0);                
                    
}

else 
{
  echo "0";
}
?></h4>

          </div>

<a href="depositupdate.php">
               <div class="panel-footer">
                  <span class="pull-left">Manul Reacharge</span>
                  <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                  <div class="clearfix"></div>
               </div>
            </a>
      </div>


       <div style="background-color: #FCFFFF; margin: 10px; padding: 20px; border: 1px solid black; border-radius:10px;" class="dashboard_box blue_bg col-md-3 border-radius">

          <h4 class="gradiant_bg dashboard_icon" style="text-align:left"><i class="fa fa-inr" aria-hidden="true"></i></h4>


          <div class="title">
            <p class="text-title" style="text-align:left">Total Withdrawal</p>
            <h4 class="text-amount" style="text-align:left">₹ <?php



$result = mysqli_query($con,"SELECT sum(amount) as 'pending_w' FROM tbl_withdrawal where status = 0");
?>

<?php
if (mysqli_num_rows($result) > 0) {
  $row = mysqli_fetch_array($result);

  $pending_w = $row["pending_w"];
              echo  number_format($pending_w);             
                    
}

else 
{
  echo "0";
}
?></h4>

          </div>
<a href="manage_withdrawAccept.php">
               <div class="panel-footer">
                  <span class="pull-left">See in Detail</span>
                  <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                  <div class="clearfix"></div>
               </div>
            </a>

      </div>


       <div style="background-color: #FCFFFF;margin: 10px; padding: 20px; border: 1px solid black; border-radius:10px;" class="dashboard_box blue_bg col-md-3 border-radius">

          <h4 class="gradiant_bg dashboard_icon" style="text-align:left"><i class="fa fa-clone" aria-hidden="true"></i></h4>


          <div class="title">
            <p class="text-title" style="text-align:left">Withdrawal Requests</p>
            <h4 class="text-amount" style="text-align:left">₹ <?php



$result = mysqli_query($con,"SELECT sum(amount) as 'approve_withdrawal' FROM tbl_withdrawal where status = 1");
?>

<?php
if (mysqli_num_rows($result) > 0) {
  $row = mysqli_fetch_array($result);

  $approve_withdrawal = $row["approve_withdrawal"];
              echo  number_format($approve_withdrawal);             
                    
}

else 
{
  echo "0";
}
?></h4>

          </div>

<a href="manage_withdraw.php">
               <div class="panel-footer">
                  <span class="pull-left">See in Detail</span>
                  <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                  <div class="clearfix"></div>
               </div>
            </a>
      </div>

     







        <!-- ./col -->
        
        <!-- ./col -->
      </div>
  </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include("include/footer.inc.php");?>
<script src="dist/js/pages/dashboard.js"></script>

</div>
<!-- ./wrapper -->


</body>
</html>