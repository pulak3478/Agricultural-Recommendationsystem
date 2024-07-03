<?php
session_start();
include_once('connection.php');

if (isset($_POST['login'])) {

    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $sql = "SELECT * FROM users WHERE `username`='$username' AND `password`='$password'";
    $result = mysqli_query($conn, $sql);

    if (empty($_POST['username']) && empty($_POST['password'])) {
        echo "<script>alert('অনুগ্রহ করে ব্যবহারকারীর নাম এবং পাসওয়ার্ড পূরণ করুন');</script>";
        exit;
    } elseif (empty($_POST['password'])) {
        echo "<script>alert('আপনার পাসওয়ার্ড লিখুন');</script>";
        exit;
    } elseif (empty($_POST['username'])) {
        echo "<script>alert('আপনার ইমেইল লিখুন);</script>";
        exit;
    } else {
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_array($result);
            $name = $row['name'];
            $username = $row['username'];
            $password = $row['password'];


            if ($username == $username && $password == $password) {
                $_SESSION['name'] = $name;
                $_SESSION['username'] = $username;
                $_SESSION['password'] = $password;
                header('location:welcome.php');
            }
        } else {
            echo "<script>alert(অনিবন্ধনকৃত ব্যবহারকারীর নাম বা পাসওয়ার্ড');</script>";
            exit;
        }
    }

}
