<?php $urlpage= basename($_SERVER['PHP_SELF']);
$active='';

?>
<div class="appBottomMenu">
  <div class="item <?php if($urlpage=='index.php'){echo'active';}?>"> <a href="index.php">
    <p> <i class="icon ion-ios-home"></i> <span>Home</span> </p>
    </a> </div>
  <div class="item <?php if($urlpage=='search.php'){echo'active';}?>"> <a href="search.php">
    <p> <i class="icon ion-ios-search"></i> <span>Search</span> </p>
    </a> </div>
   <?php if(isset($_SESSION['frontuserid'])){?>
    <div class="item <?php if($urlpage=='gamedashboard.php'){echo'active';}?>"> <a href="gamedashboard.php">
    <p> <i class="icon ion-logo-game-controller-b"></i> <span>Win</span> </p>
    </a> </div>
    
    <div class="item <?php if($urlpage=='promotion.php'){echo'active';}?>"> <a href="promotion.php">
    <p> <i class="icon ion-ios-share"></i> <span>Share</span> </p>
    </a> </div>
    
    <div class="item <?php if($urlpage=='login.php' || $urlpage=='signup.php' || $urlpage=='forgot-password.php' || $urlpage=='myaccount.php' || $urlpage=='recharge.php' || $urlpage=='transactions.php'){echo'active';}?>"> <a href="myaccount.php" class="icon toggleSidebar">
    <p> <i class="icon ion-ios-person"></i> <span> My Account </span> </p>
    </a> </div>
    <?php }else{?>
  <div class="item <?php if($urlpage=='login.php' || $urlpage=='signup.php' || $urlpage=='forgot-password.php'){echo'active';}?>"> <a href="login.php" class="icon toggleSidebar">
    <p> <i class="icon ion-ios-person"></i> <span> My Account </span> </p>
    </a> </div>
    <?php }?>
</div>

