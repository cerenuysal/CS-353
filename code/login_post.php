<?php
ini_set('error_reporting', E_ALL );
ini_set('display_errors', true );
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
include 'connection.php';
$username =  $_POST["username"];
$password = $_POST["password"];
$sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $_SESSION['conf'] =1;
    $row = $result->fetch_assoc();
    $_SESSION['cid'] = $row['cid'];
    $_SESSION['logged_in'] = true;
    echo 'AAAAAAAAAAAAAAAAAAAAAAAAAAAA';
}
else {
    $_SESSION['conf'] = -2;
    $_SESSION['logged_in'] = false;
}
$conn->close(); ?>

