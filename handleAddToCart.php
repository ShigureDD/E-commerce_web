<?php
  session_start();
  $conn=mysqli_connect('sophia.cs.hku.hk','cylam','y6299936') or die ('Failed to Connect! '.mysqli_error($conn));

  mysqli_select_db($conn, 'cylam') or die ('Failed to Access DB! '.mysqli_error($conn));
  $tnumOfItem=0;
  $updateNumber=$_GET['updateNumber'];
  $id=$_GET['itemID'] ;
  $quantity=1;
  if(!isset($_SESSION['shoppingCart'])){
    $_SESSION['shoppingCart'] = array();
  }
  if(isset($_GET['itemID'])){
    if ($id==0 & $updateNumber==0) {
      $cart = $_SESSION['shoppingCart'];
      foreach($cart as $key=>$value){
        $tnumOfItem += $value;
      }
      print $tnumOfItem;
    }
    if($id>0){
       if(empty($_SESSION['shoppingCart'])){
         $_SESSION['shoppingCart']=array($id=>$quantity);
       }else {
         if(array_key_exists($id,$_SESSION['shoppingCart'])){
           if($updateNumber>=2){
              $_SESSION['shoppingCart'][$id]+=($updateNumber-$_SESSION['shoppingCart'][$id]);
            }elseif ($updateNumber == 1) {
              $_SESSION['shoppingCart'][$id]+=$updateNumber;
            }elseif ($updateNumber<1) {
              $_SESSION['shoppingCart'][$id]+=$updateNumber;
              if($_SESSION['shoppingCart'][$id]<=0){
                unset($_SESSION['shoppingCart'][$id]);
              }
            }

         }else {
           $_SESSION['shoppingCart'][$id]=$quantity;
         }
       }
       $cart = $_SESSION['shoppingCart'];
       foreach($cart as $key=>$value){
         $tnumOfItem += $value;
       }
      print $tnumOfItem;
    }
  }

  if($_SESSION['shoppingCart'][$id]<=0){
    unset($_SESSION['shoppingCart'][$id]);
  }
  if(isset($_POST["d"])){
      echo "<p>You have successfully placed order for {$_POST["quan"]} item(s)</p><br>
              <p>$ {$_POST["price"]} paid </p>";
      unset($_SESSION['shoppingCart']);
      echo "<input type=button value=ContinousBrowsing&gt onclick=location='index.html' />";
    }else {

    }
?>
