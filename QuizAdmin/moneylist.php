<?php include("php/connection.php");
include("php/AuthAdmin.php");
$webtitle="金錢流向";
include("php/header.php");
if(isset($_GET['id'])){
    $result = $conn->query("SELECT moneyhistory.*, user.user_nickname,user.user_username FROM moneyhistory INNER JOIN user on moneyhistory.user_id=user.user_id Where moneyhistory.user_id='".$_GET['id']."' Order by money_id DESC");
    $rscount=$result->num_rows;

  }else{
    $result = $conn->query("SELECT moneyhistory.*, user.user_nickname,user.user_username FROM moneyhistory INNER JOIN user on moneyhistory.user_id=user.user_id Order by money_id DESC");
    $rscount=$result->num_rows;
}
include("php/menu.php");
 ?>
  
  <div class="ui main text container">
    <h2 class="ui header">
      <i class="money icon"></i>
      <div class="content">金錢流向<div class="sub header">顯示目前玩家金錢流向</div></div>
    </h2>
    <div class="ui raised segment">
    <a class="ui yellow ribbon label">所有金錢流向</a>
    <table class="ui celled table">
  <thead>
    <tr>
    <th>序號</th>
    <th>玩家帳號</th>
    <th>玩家暱稱</th>
    <th>事件</th>
    <th>收/支出</th>
    <th>發生金額</th>
    <th>時間</th>
  </tr></thead>
  <tbody>
  <?php while($rs = $result->fetch_array(MYSQLI_ASSOC)) { ?>
    <tr>
      <td>
        <?php echo $rs["money_id"]; ?>
      </td>
      <td>
        <a href="user.php?id=<?php echo $rs["user_id"]; ?>"><?php echo $rs["user_username"]; ?></a>
      </td>
      <td>
       <?php echo $rs["user_nickname"]; ?>
      </td>
      <td>
        <?php  switch ($rs["money_subject"]) {
                  case 1:
                    echo "玩【超級大富翁模式】";
                  break;
                  case 2: 
                    echo "玩【歡樂智多星模式】"; 
                  break; 
                  case 3: 
                    echo "【破產救濟】我是窮人"; 
                  break; 
        } ?>
      </td>
      <td>
              <?php  switch ($rs["money_inout"]) {
                  case 1:
                    echo "收入";
                  break;
                  case 0: 
                    echo "支出"; 
                  break; 
        } ?></td>
      <td><?php echo $rs["money_total"]; ?></td>
      <td><?php echo $rs["money_date"]; ?></td>
    </tr>
    <?php } ?>
  </tbody>
</table>
    </div>
    </div>



<?php include("php/footer.php");
$conn->close(); ?>