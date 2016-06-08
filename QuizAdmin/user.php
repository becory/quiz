<?php include("php/connection.php");
include("php/AuthAdmin.php");
$webtitle="玩家資料修改";
include("php/header.php");
if(isset($_GET['id'])){
    $result = $conn->query("SELECT * FROM user Where user_id='".$_GET['id']."'");
  }else{
    echo "<meta http-equiv='refresh' content='0;url=userlist.php' />";
}
if(isset($_POST['edit'])&&$_POST['edit']=="yes"){
    $user_id=$_POST['user_id'];
    $user_nickname=$_POST['user_nickname'];
    $user_admin=$_POST['user_admin'];
    $sql="UPDATE user SET user_nickname='".$user_nickname."', user_admin='".$user_admin."'  Where user_id='".$user_id."'";
    $result2 = $conn->query($sql);
    if($result2){
      echo "<script>alert('修改成功');</script><meta http-equiv='refresh' content='0;url=userlist.php' />";
    }else{
      echo "<script>alert('修改失敗');</script>";
    }
  }

include("php/menu.php");
 ?>
  <?php while($rs = $result->fetch_array(MYSQLI_ASSOC)) { ?>
  <div class="ui main text container">
    <h2 class="ui header">
      <i class="user icon"></i>
      <div class="content"><?php echo $rs["user_nickname"]; ?>的資料修改<div class="sub header">顯示玩家的資料與修改</div></div>
    </h2>
    <div class="ui raised segment">
    <a class="ui green ribbon label">玩家詳細資料</a>
    <form action="user.php?id=<?php echo $rs["user_id"]; ?>" method="post">
    <div class="ui form">
      <div class="field">
        <label>玩家資訊</label> 
        <a href="answerlist.php?id=<?php echo $rs['user_id']; ?>" class="ui button teal">答題紀錄</a><a href="moneylist.php?id=<?php echo $rs['user_id']; ?>" class="ui button yellow">金錢流向</a>
      </div>
    </div>
    <div class="ui form">
      <div class="field">
        <label>序號</label> 
        <?php echo $rs["user_id"]; ?> <input type="hidden" name="user_id" value="<?php echo $rs['user_id']; ?>"><input type="hidden" name="edit" value="yes">
      </div>
    </div>
    <div class="ui form">
      <div class="field">
        <label>玩家帳號</label>
        <?php echo $rs["user_username"]; ?>
      </div>
    </div>
    <div class="ui form">
      <div class="field">
        <label>玩家暱稱</label>
        <input type="text" name="user_nickname" value="<?php echo $rs['user_nickname']; ?>">
      </div>
    </div>
    <div class="ui form">
      <div class="field">
        <label>總金額</label>
        <?php echo $rs["user_money"]; ?>
      </div>
    </div>
    <div class="ui form">
      <div class="field">
        <label>管理員權限</label>
        <select name="user_admin">
          　<option value="1" <?php  if($rs["user_admin"]=='1'){ echo 'selected'; }; ?>>管理員</option>
          　<option value="0" <?php  if($rs["user_admin"]=='0'){ echo 'selected'; }; ?>>一般玩家</option>
        </select>
      </div>
    </div>
    <button class="ui green submit button" type="submit">送出</button>
    </form>
    </div>
    </div>



<?php }
include("php/footer.php");
$conn->close(); ?>