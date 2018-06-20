<?php

// 入力チェック
if( !isset($_POST["id"]) || !isset($_POST["pass"]) ){
    header("Location: ../WEB/login.php?error=1");
    exit;
}

$success = false;
$in_id = $_POST["id"];;
$in_passwd = $_POST["pass"];

// ログイン認証処理
require_once('DAO/UserDAO.class.php');
$userDao = new UserDAO();
$users   = $userDao->users();
foreach($users as $user){
  $id     = $user['user_id'];
  $passwd = $user['password'];
  if($in_id == $id && $in_passwd == $passwd) {
    $success = true;
    // session
    session_start();
    $_SESSION["user_id"] = $user['user_id'];
    $_SESSION["password"] = $user['password'];
    $_SESSION["user_name"] = $user['user_name'];
    $_SESSION["mail_address"] = $user['mail_address'];
    $_SESSION["country_id"] = $user['country_id'];
    $_SESSION["launguege_id"] = $user['launguege_id'];
    $_SESSION["user_status"] = $user['user_status'];
    // cookie
    setcookie($user['user_id'], time()+86400);
    setcookie($user['password'], time()+86400);
    setcookie($user['user_name'], time()+86400);
    setcookie($user['mail_address'], time()+86400);
    setcookie($user['country_id'], time()+86400);
    setcookie($user['launguege_id'], time()+86400);
    setcookie($user['user_status'], time()+86400);
    break;
  }
}

// 画面遷移制御
$url = null;
if($success){
    $url = "../WEB/index.php";
}else{
    $url = "../WEB/login.php?error=2";
}

// 画面遷移
header("Location: $url");
