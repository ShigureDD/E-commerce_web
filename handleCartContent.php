<form  action="handleAddToCart.php" method="POST">
<h2>ShoppingCart</h2>
<table width="100%">
  <tr>
    <td></td>
    <td></td>
    <td>Price:   </td>
    <td>Quantity:</td>
  </tr>
<?php
	session_start();

  $conn=mysqli_connect('sophia.cs.hku.hk','cylam','y6299936') or die ('Failed to Connect! '.mysqli_error($conn));

  mysqli_select_db($conn, 'cylam') or die ('Failed to Access DB! '.mysqli_error($conn));
  $tpice=0;
	$cart = $_SESSION['shoppingCart'];
  $tiem=0;
  $item_array=array();
	foreach($cart as $key=>$value){
    echo "<input type=hidden value={$key} name='d[]'/>";
    $query ="SELECT * FROM `catalog` WHERE itemID='$key'";
    $result = mysqli_query($conn, $query) or die ('Failed to query '.mysqli_error($conn));
    while($row = mysqli_fetch_array($result)) {
      $item_array[]= array('itemID'=>$row['itemID'],'itemName'=> $row['itemName'],'itemImage' => $row['itemImage'],'itemPrice' => $row['itemPrice'],'itemDescription'=> $row['itemDescription'],'quan'=>$value);
    }
    }
    for ($i = 0; $i < count($item_array); $i++) {
      $tiem+=$item_array[$i]['quan'];
      $tprice+=($item_array[$i]['itemPrice']*$item_array[$i]['quan']);
        echo"<tr>
                 <td><img src={$item_array[$i]['itemImage']}></td>
                 <td><h3>{$item_array[$i]['itemName']}</h3><br>{$item_array[$i]['itemDescription']}</td>
                 <td>HKD{$item_array[$i]['itemPrice']}</td>
                 <td><div id={$item_array[$i]['itemID']}><input type=number id=updateNumber onchange=addToCart(this) value={$item_array[$i]['quan']}></div></td>
           </tr>
           </div>";
      }
  echo " <tr>
          <td colspan=4>Cart sub total ({$tiem}(s)):HKD{$tprice}<td>
          </tr>
          <input type=hidden value={$tiem} name='quan' />
          <input type=hidden value={$tprice} name='price' />";
?>

</table>
<input type="submit" value="Procee to check out" />
</form>
<input type="button" value="Continous Browsing >" onclick="location='index.html';" />
