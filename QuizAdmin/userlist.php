<?php include("php/connection.php");
include("php/AuthAdmin.php");
$webtitle="玩家列表";
include("php/header.php");
if(isset($_GET['keyword'])){
    $result = $conn->query("SELECT * FROM user Where user_nickname LIKE '%".$_GET['keyword']."%' OR user_username LIKE '%".$_GET['keyword']."%'");
    $rscount=$result->num_rows;

  }else{
    $result = $conn->query("SELECT * FROM user Order by user_money DESC");
    $rscount=$result->num_rows;
}
include("php/menu.php");
 ?>
  <div class="ui main text container">
    <h2 class="ui header">
      <i class="user icon"></i>
      <div class="content">玩家列表<div class="sub header">顯示目前所有玩家的清單</div></div>
    </h2>
    <div class="ui raised segment">
    <a class="ui red ribbon label">所有玩家列表</a>
    <table class="ui celled table">
  <thead>
    <tr>
      <th colspan="6"><form action="userlist.php" method="get"><div class="ui icon input"><input type="text" placeholder="Search..." name="keyword"><i class="search icon"></i></div><button class="ui button" type="submit">搜尋</button></form></th>
    </tr>
    <tr>
    <th>序號</th>
    <th>玩家帳號</th>
    <th>玩家暱稱</th>
    <th>總金額</th>
    <th>管理員權限</th>
    <th>詳細資料</th>
  </tr></thead>
  <tbody>
  <?php while($rs = $result->fetch_array(MYSQLI_ASSOC)) { ?>
    <tr>
      <td>
        <?php echo $rs["user_id"]; ?>
      </td>
      <td>
        <?php echo $rs["user_username"]; ?>
      </td>
      <td>
       <?php echo $rs["user_nickname"]; ?>
      </td>
      <td>
        <?php echo $rs["user_money"]; ?>元
      </td>
        <?php if($rs["user_admin"]=='1'){ ?>
          <td class="positive"><i class="icon checkmark"></i>管理員</td>
          <?php }else{ ?>
        <td class="negative"><i class="icon close"></i>一般玩家</td>
        <?php } ?>
        <td><a href="user.php?id=<?php echo $rs["user_id"]; ?>" class="ui blue button" type="submit"><i class="pencil icon"></a></td>
    </tr>
    <?php } ?>
  </tbody>
</table>
    </div>
    </div>



<?php include("php/footer.php");
$conn->close(); ?>