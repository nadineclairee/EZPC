<?php
session_start();
include('../config/dbconn.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Validate and sanitize input
    $orderId = isset($_POST['id']) ? intval($_POST['id']) : 0;
    $newStatus = isset($_POST['status']) ? mysqli_real_escape_string($dbconn, $_POST['status']) : '';

    // Check if the order ID and new status are valid
    if ($orderId > 0 && !empty($newStatus)) {
        // Update the order status in the database
        $updateQuery = "UPDATE `order` SET status = '$newStatus' WHERE order_id = $orderId";
        $updateResult = mysqli_query($dbconn, $updateQuery);

        if ($updateResult) {
            echo 'success';
        } else {
            echo 'error';
        }
    } else {
        echo 'error';
    }
} else {
    // If the request method is not POST, return an error
    echo 'error';
}
?>
