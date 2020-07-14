<?php
	$conn=mysqli_connect('sophia.cs.hku.hk','cylam','y6299936') or die ('Failed to Connect! '.mysqli_error($conn));

	mysqli_select_db($conn, 'cylam') or die ('Failed to Access DB! '.mysqli_error($conn));
	$start=0;
	$limit=3;
	if(isset($_GET['id'])){
			 $id=$_GET['id'] ;
			 $start=($id-1)*$limit;
	}
	if ($_GET['show'] == 'Books') {
		$query ="SELECT * FROM `catalog` WHERE itemCategory='Books'ORDER BY itemName ASC Limit $start,$limit";
	}elseif ($_GET['show'] == 'Pens') {
		$query ="SELECT * FROM `catalog` WHERE itemCategory='Pens'ORDER BY itemName ASC Limit $start,$limit";
	}elseif ($_GET['show'] == 'CPU') {
		$query ="SELECT * FROM `catalog` WHERE itemCategory='CPU'ORDER BY itemName ASC Limit $start,$limit";
	}elseif ($_GET['show'] == 'First') {
		$query ="SELECT * FROM `catalog` ORDER BY itemCategory ASC,itemName ASC LIMIT $start,$limit";
	}

	$result = mysqli_query($conn, $query) or die ('Failed to query '.mysqli_error($conn));

	$item_array=array();


	while($row = mysqli_fetch_array($result)) {
			$item_array[] = array('itemID'=>$row['itemID'],'itemName'=> $row['itemName'],'itemImage' => $row['itemImage'],'itemPrice' => $row['itemPrice'],'itemDescription'=> $row['itemDescription']);
	}


	print json_encode($item_array);


?>
