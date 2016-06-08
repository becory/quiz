<?php session_start();
include_once("php/connection.php");
if(isset($_GET['mode'])&&$_GET['mode']=='logout'){
  session_destroy();
}
if(isset($_SESSION['userid'])){
  echo "<meta http-equiv='refresh' content='0;url=index.php' />";
  exit;
}else{
  if(isset($_POST['login'])&&isset($_POST['username'])&&isset($_POST['password'])){
     $username=$_POST['username'];
     $password=$_POST['password'];
     $result = $conn->query("SELECT * FROM user WHERE (user_username='".$username."' AND user_password='".$password."') AND user_admin='1'");
     $rscount=$result->num_rows;
     if($rscount<=0){
        echo "<script>alert('帳號密碼錯誤或沒有權限');</script>";
     }else{
        while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
        $_SESSION['username']=$rs['user_username'];
        $_SESSION['userid']=$rs['user_id'];
        $_SESSION['nickname']=$rs['user_nickname'];
        echo "<meta http-equiv='refresh' content='0;url=index.php' />";
     }
   }
  }
}
?>
<!DOCTYPE html>
<html>
<head>
  <!-- Standard Meta -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

  <!-- Site Properties -->
  <title>登入管理後台</title>
  <link rel="stylesheet" type="text/css" href="dist/components/reset.css">
  <link rel="stylesheet" type="text/css" href="dist/components/site.css">

  <link rel="stylesheet" type="text/css" href="dist/components/container.css">
  <link rel="stylesheet" type="text/css" href="dist/components/grid.css">
  <link rel="stylesheet" type="text/css" href="dist/components/header.css">
  <link rel="stylesheet" type="text/css" href="dist/components/image.css">
  <link rel="stylesheet" type="text/css" href="dist/components/menu.css">

  <link rel="stylesheet" type="text/css" href="dist/components/divider.css">
  <link rel="stylesheet" type="text/css" href="dist/components/segment.css">
  <link rel="stylesheet" type="text/css" href="dist/components/form.css">
  <link rel="stylesheet" type="text/css" href="dist/components/input.css">
  <link rel="stylesheet" type="text/css" href="dist/components/button.css">
  <link rel="stylesheet" type="text/css" href="dist/components/list.css">
  <link rel="stylesheet" type="text/css" href="dist/components/message.css">
  <link rel="stylesheet" type="text/css" href="dist/components/icon.css">

  <script src="assets/library/jquery.min.js"></script>
  <script src="dist/components/form.js"></script>
  <script src="dist/components/transition.js"></script>

  <style type="text/css">
    body {
      background-color: #DADADA;
    }
    body > .grid {
      height: 100%;
    }
    .image {
      margin-top: -100px;
    }
    .column {
      max-width: 450px;
    }
  </style>
</head>
<body>

<div class="ui middle aligned center aligned grid">
  <div class="column">
    <h2 class="ui orange header">
      <div class="content">
        登入超級大富翁後台
      </div>
    </h2>
    <form class="ui large form" action="login.php" method="post">
      <div class="ui stacked segment">
        <div class="field">
          <div class="ui left icon input">
            <i class="user icon"></i>
            <input type="text" name="username" placeholder="帳號">
          </div>
        </div>
        <div class="field">
          <div class="ui left icon input">
            <i class="lock icon"></i>
            <input type="password" name="password" placeholder="密碼">
            <input type="hidden" name="login" value="login">
          </div>
        </div>
        <button class="ui fluid large yellow submit button" type="submit">登入</button>
      </div>

      <div class="ui error message"></div>

    </form>

    <div class="ui message">
      加入會員？ <a href="#">請從主程式加入會員</a>
    </div>
  </div>
</div>

</body>

</html>
