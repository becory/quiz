<?php include("php/connection.php");
include("php/AuthAdmin.php");
$webtitle="答題記錄";
include("php/header.php");
if(isset($_GET['qus_id'])){
    $result = $conn->query("SELECT anshistory.*, user.user_nickname,user.user_username FROM anshistory INNER JOIN user on anshistory.user_id=user.user_id Where anshistory.qus_id='".$_GET['qus_id']."'");
    $rscount=$result->num_rows;

  }else{
      if(isset($_GET['id'])){
          $result = $conn->query("SELECT anshistory.*, user.user_nickname,user.user_username FROM anshistory INNER JOIN user on anshistory.user_id=user.user_id Where anshistory.user_id='".$_GET['id']."'Order by his_date DESC");
          $rscount=$result->num_rows;

        }else{
          $result = $conn->query("SELECT anshistory.*, user.user_nickname,user.user_username FROM anshistory INNER JOIN user on anshistory.user_id=user.user_id Order by his_id DESC");
          $rscount=$result->num_rows;
      }
    }
include("php/menu.php");
 ?>
  
  <div class="ui main text container">
    <h2 class="ui header">
      <i class="comment icon"></i>
      <div class="content">答題記錄<div class="sub header">顯示目前玩家答題記錄</div></div>
    </h2>
    <div class="ui raised segment">
    <a class="ui blue ribbon label">所有答題列表</a>
    <table class="ui celled table">
  <thead>
    <tr>
    <th>序號</th>
    <th>玩家帳號</th>
    <th>玩家暱稱</th>
    <th>模式</th>
    <th>答題順序</th>
    <th>題庫編號</th>
    <th>答案</th>
    <th>下注金額</th>
    <th>時間</th>
  </tr></thead>
  <tbody>
  <?php while($rs = $result->fetch_array(MYSQLI_ASSOC)) { ?>
    <tr>
      <td>
        <?php echo $rs["his_id"]; ?>
      </td>
      <td>
        <a href="user.php?id=<?php echo $rs["user_id"]; ?>"><?php echo $rs["user_username"]; ?></a>
      </td>
      <td>
       <?php echo $rs["user_nickname"]; ?>
      </td>
      <td>
        <?php  switch ($rs["his_million"]) {
          case '1':
            echo "【超級】";
            break;
          case '0':
            echo "【歡樂】";
            break;
        } ?>
      </td>
      <td><?php echo $rs["his_qusno"]; ?></td>
      <td><a href="questionlist.php?id=<?php echo $rs["qus_id"]; ?>"><?php echo $rs["qus_id"]; ?></a></td>
      <td><?php echo $rs["his_ans"]; ?></td>
      <td><?php echo $rs["his_money"]; ?></td>
      <td><?php echo $rs["his_date"]; ?></td>
    </tr>
    <?php } ?>
  </tbody>
</table>
    </div>
    </div>



<?php include("php/footer.php");
$conn->close(); ?>