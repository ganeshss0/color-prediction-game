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
<link rel="stylesheet" href="assets/css/style.css?v=2">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<style>
.pleft {
	padding-left:3px;
}
.pright {
	padding-right:3px;
}

.vcard {
  background: #fff;
  border-radius: 10px;
}

.vcard {
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: all 0.3s cubic-bezier(.25,.8,.25,1);
}

.card:hover {
  box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
}

  .height{ height:40px; line-height:40px;}
.height .pageTitle{ line-height:2em;}

</style>
</head>

<body>
<?php include("include/connection.php");?>
<!-- Page loading -->

<!-- * Page loading --> 
<a href="#">
 
<div class="appHeader1 height">
  <div class="text-center"> 
    <div class="pageTitle"><i class="icon ion-md-download"></i> Download App</div>
  </div>
  
  </div>
</a>
<!-- App Header -->
<div class="appHeader">
  <div class="pageTitle"  > <h1 style="color:#ffb700; font-size: 26px; font-family: arial;">2XClub.SHOP</h1></div>
</div>

<!-- App Capsule -->
<div id="appCapsule"> 
  
  
  <div class="appContent">
    <div class="sectionTitle mb-2"> 
      
      <!-- post list -->
      <div class="vcard">
        <div class="row"> 
          <!-- item -->
          <?php
	$i=0;
  $productQuery=mysqli_query($con,"select * from `tbl_product` where `status`='1'");
  while($productResult=mysqli_fetch_array($productQuery)){$i++;?>
          <div class="col-6 <?php if(($i%2)==0){echo"pleft";}else{echo "pright";}?>">
            <div class="vcard card"> <a href="productdetails.php?pid=<?php echo encryptor('encrypt', $productResult['id']); ?>" class="postItem">
              <div class="imageWrapper"> <img src="<?php echo $productResult['images'];?>" alt="image" class="image"> </div>
              <p class="text-center"><?php echo $productResult['name'];?></p>
              <footer> ₹ <?php echo number_format($productResult['price'], 2);?></footer>
              </a> </div>
          </div>
          <?php }?>
          <!-- * item --> 
          <!-- item -->
              <div class="p-3"></div>
      
      
      <!-- * listview --> 
      
    </div>
        
        
        </div>
      </div>
      
      <!-- * post list -->
      
    
    <!-- app Footer --> 
    
    <!-- * app Footer --> 
    
  </div>
  
</div>

<!-- * appCapsule -->

<?php include("include/footer.php");?>

<!-- ///////////// Js Files ////////////////////  --> 
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