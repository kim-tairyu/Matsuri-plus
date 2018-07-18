<?php
// User Model Class
class UserModel extends BaseModel {
  
  // ユーザ情報を取得（全件）
  public function login() {
    try {
      $sql    = 'SELECT * FROM user';
      $stmt   = $this->pdo->prepare($sql);
      $stmt->execute();
      $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    } catch(PDOException $e) {
      die('DB ERROR:'.$e->getMesseage);
    }
    return $result;
  }
  
  // 新規登録
<<<<<<< HEAD
  public function signUp($user_id, $password, $user_name, $mail_address, $country_id, $launguege_id) {
    try {
      $sql  = 'INSERT INTO user (
        user_id, password, user_name, mail_address, country_id, languege_id, user_status, user_icon, authority
      ) VALUES (?, ?, ?, ?, ?)';
=======
  public function signUp($user_id, $password, $user_name, $mail_address, $country_id, $launguege_id, $authority) {
    try {
      $sql  = 'INSERT INTO user (
        user_id, password, user_name, mail_address, country_id, languege_id, authority
      ) VALUES (?, ?, ?, ?, ?, ?, ?);';
>>>>>>> feature
      $stmt = $this->pdo->prepare($sql);
      $stmt->bindValue(1, $user_id);
      $stmt->bindValue(2, $password);
      $stmt->bindValue(3, $user_name);
<<<<<<< HEAD
      $stmt->bindValue(4, $country_id);
      $stmt->bindValue(5, $launguege_id);
=======
      $stmt->bindValue(4, $mail_address);
      $stmt->bindValue(5, $country_id);
      $stmt->bindValue(6, $launguege_id);
      $stmt->bindValue(7, $authority);
>>>>>>> feature
      $stmt->execute();
    } catch(PDOException $e) {
      die('DB ERROR:'.$e->getMesseage);
    }
  }
  
  // ユーザ情報を取得（一件）
  public function getOneUser($user_id) {
    try {
      $sql    = 'SELECT * FROM user LEFT JOIN country ON user.country_id = country.country_id LEFT JOIN languege ON user.languege_id = languege.languege_id WHERE user_id = ?;';
      $stmt   = $this->pdo->prepare($sql);
      $stmt->bindValue(1, $user_id);
      $stmt->execute();
      $result = $stmt->fetch(PDO::FETCH_ASSOC);
    } catch(PDOException $e) {
      die('DB ERROR:'.$e->getMesseage);
    }
    return $result;
  }
  
  //ユーザ名変更
  public function updateUserStatus($user_id, $calm, $value){
    try{
      $sql  = "UPDATE user SET ".$calm." = ? WHERE user_id = ?;";
      $stmt = $this->pdo->prepare($sql);
      $stmt->bindValue(1, $value);
      $stmt->bindValue(2, $user_id);
      $stmt->execute();
    } catch(PDOException $e){
      die('DB ERROR:'.$e->getMesseage);
    }
  }
  
}
