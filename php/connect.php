<?php
/// CONNECT TO DATABASE
//$hostname="****"; //// specify host, i.e. 'localhost'
//$user="****"; //// specify username
//$pass="****"; //// specify password
//$dbase="****"; //// specify database name

$hostname='localhost'; //// specify host, i.e. 'localhost'
$user='root'; //// specify username
$pass=""; //// specify password
$dbase='literature_db'; //// specify database name


$conn = new mysqli($hostname, $user, $pass, $dbase);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>