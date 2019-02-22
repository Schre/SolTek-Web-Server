<?php
include dirname(__DIR__) . '/business/database/Query.php';

if (!isset($_POST["data"]))
	exit();

$query = $_POST["data"];

if (strlen($query) < 3)
	exit();

$temp = explode(" ", $query);
$first_name = $temp[0];
$last_name = "";

if (count($temp) == 2)
	$last_name = $temp[1];
/*if (strlen($last_name) == 0)
	$last_name = "";*/

$sql = "SELECT * FROM Users WHERE first_name LIKE '%" . $first_name . "%'  AND last_name LIKE '%" . $last_name . "%';";

$hit = Query::execute_query($sql);
$output = array();;

$i = 0;
while ($row = mysqli_fetch_assoc($hit)) {
	$output[$i]["first_name"] = $row["first_name"];
	$output[$i]["last_name"] = $row["last_name"];
	$output[$i]["user_id"] = $row["user_id"];
	++$i;
}

$out = array_values($output);
header('Content-Type: application/json');
echo json_encode(array('response' => $out));
exit();
?>
