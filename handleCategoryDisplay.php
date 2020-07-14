<?php
	$conn=mysqli_connect('sophia.cs.hku.hk','cylam','y6299936') or die ('Failed to Connect! '.mysqli_error($conn));

	mysqli_select_db($conn, 'cylam') or die ('Failed to Access DB! '.mysqli_error($conn));

	$query ="SELECT itemCategory FROM catalog ORDER BY itemCategory ASC"; 

	$result = mysqli_query($conn, $query) or die ('Failed to query '.mysqli_error($conn));
	$category_array=array();

	while($row = mysqli_fetch_array($result)) {
		$category_array[]= array('itemCategory'=>$row['itemCategory']);
	}

	$fresult=array_unique($category_array,SORT_REGULAR);

	print json_encode($fresult);

?>
