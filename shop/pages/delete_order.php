<?php
// delete_order.php

session_start();
include('../config/dbconn.php');

if (isset($_POST['id'])) {
    $orderId = $_POST['id'];

    // Perform the deletion logic here
    $deleteQuery = "DELETE FROM `order` WHERE order_id = $orderId";
    $deleteResult = mysqli_query($dbconn, $deleteQuery);

    if ($deleteResult) {
        echo "success";
    } else {
        echo "error";
    }
} else {
    echo "error";
}
?>
