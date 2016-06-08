<?php include("php/connection.php");
include("php/AuthAdmin.php");
    $webtitle="首頁";
    $result = $conn->query("SELECT * FROM user Order by user_money DESC limit 0,5");
    $rscount=$result->num_rows;
    $result2 = $conn->query("SELECT anshistory.*, user.user_nickname,user.user_username,count(anshistory.user_id) FROM anshistory INNER JOIN user on anshistory.user_id=user.user_id Where anshistory.his_million='1' GROUP BY user_id HAVING COUNT(*) > 0 Order by count(anshistory.user_id) DESC limit 0,5");
    $rscount2=$result2->num_rows;
    $result3 = $conn->query("SELECT anshistory.*, user.user_nickname,user.user_username,count(anshistory.user_id) FROM anshistory INNER JOIN user on anshistory.user_id=user.user_id Where anshistory.his_million='0' AND NOT(anshistory.his_ans='((逃離戰場))') GROUP BY user_id HAVING COUNT(*) > 0 Order by count(anshistory.user_id) DESC limit 0,5");
    $rscount3=$result3->num_rows;
    $result4 = $conn->query("SELECT anshistory.*, user.user_nickname,user.user_username,count(anshistory.his_ans='((逃離戰場))') FROM anshistory INNER JOIN user on anshistory.user_id=user.user_id Where anshistory.his_ans='((逃離戰場))'  GROUP BY user_id HAVING COUNT(*) > 0 Order by count(anshistory.his_ans='((逃離戰場))') DESC  limit 0,5");
    $rscount4=$result4->num_rows;
    $result5 = $conn->query("SELECT anshistory.*, user.user_nickname,user.user_username,count(anshistory.his_ans='((逾時作答))') FROM anshistory INNER JOIN user on anshistory.user_id=user.user_id Where anshistory.his_ans='((逾時作答))' GROUP BY user_id HAVING COUNT(*) > 0 Order by count(anshistory.his_ans='((逾時作答))') DESC limit 0,5");
    $rscount5=$result5->num_rows;
    $result6 = $conn->query("SELECT moneyhistory.*, user.user_nickname,user.user_username,count(moneyhistory.user_id) FROM moneyhistory INNER JOIN user on moneyhistory.user_id=user.user_id Where moneyhistory.money_subject='3' GROUP BY user_id HAVING COUNT(*) > 0 Order by count(moneyhistory.user_id) DESC limit 0,5");
    $rscount6=$result6->num_rows;
include("php/header.php");
include("php/menu.php");
 ?>
  <div class="ui main text container">
    <h2 class="ui header">
      <i class="dashboard icon"></i>
      <div class="content">首頁<div class="sub header">顯示目前的排行榜</div>
      </div>
    </h2>
    <div class="ui two column doubling stackable grid container attached">
  <div class="column">
    <div class="ui raised segment">
    <a class="ui red ribbon label">金錢排行榜</a><span>擁有最多錢的玩家。</span>
    <table class="ui celled table">
  <thead>
    <tr><th>玩家暱稱</th>
    <th>總金額</th>
  </tr></thead>
  <tbody>
  <?php while($rs = $result->fetch_array(MYSQLI_ASSOC)) { ?>
    <tr>
      <td>
        <h4 class="ui header">
          <div class="content"><?php echo $rs["user_nickname"]; ?> <div class="sub header">@<?php echo $rs["user_username"]; ?></div>
        </div>
      </h4>
      </td>
      <td>
        <?php echo $rs["user_money"]; ?>元
      </td>
    </tr>
    <?php } ?>
  </tbody>
</table>
    </div>
  </div>
<div class="column">
    <div class="ui raised segment">
    <a class="ui blue ribbon label">答題排行榜</a><span>超級大富翁模式</span>
    <table class="ui celled table">
  <thead>
    <tr><th>玩家暱稱</th>
    <th>次數</th>
  </tr></thead>
  <tbody>
  <?php while($rs2 = $result2->fetch_array(MYSQLI_ASSOC)) { ?>
    <tr>
      <td>
        <h4 class="ui header">
          <div class="content"><?php echo $rs2["user_nickname"]; ?> <div class="sub header">@<?php echo $rs2["user_username"]; ?></div>
        </div>
      </h4>
      </td>
      <td>
        <?php echo $rs2["count(anshistory.user_id)"]; ?>次
      </td>
    </tr>
    <?php } ?>
  </tbody>
</table>
    </div>
  </div>
  <div class="column">
    <div class="ui raised segment">
    <a class="ui blue ribbon label">答題排行榜</a><span>歡樂智多星模式</span>
    <table class="ui celled table">
  <thead>
    <tr><th>玩家暱稱</th>
    <th>次數</th>
  </tr></thead>
  <tbody>
  <?php while($rs3 = $result3->fetch_array(MYSQLI_ASSOC)) { ?>
    <tr>
      <td>
        <h4 class="ui header">
          <div class="content"><?php echo $rs3["user_nickname"]; ?> <div class="sub header">@<?php echo $rs3["user_username"]; ?></div>
        </div>
      </h4>
      </td>
      <td>
        <?php echo $rs3["count(anshistory.user_id)"]/3; ?>次
      </td>
    </tr>
    <?php } ?>
  </tbody>
</table>
    </div>
  </div>
    <div class="column">
    <div class="ui raised segment">
    <a class="ui ribbon label">懦夫排行榜</a><span>按下逃離戰場最多次。</span>
    <table class="ui celled table">
  <thead>
    <tr><th>玩家暱稱</th>
    <th>次數</th>
  </tr></thead>
  <tbody>
  <?php while($rs4 = $result4->fetch_array(MYSQLI_ASSOC)) { ?>
    <tr>
      <td>
        <h4 class="ui header">
          <div class="content"><?php echo $rs4["user_nickname"]; ?> <div class="sub header">@<?php echo $rs4["user_username"]; ?></div>
        </div>
      </h4>
      </td>
      <td>
        <?php echo $rs4["count(anshistory.his_ans='((逃離戰場))')"]; ?>次
      </td>
    </tr>
    <?php } ?>
  </tbody>
</table>
    </div>
  </div>
  <div class="column">
    <div class="ui raised segment">
    <a class="ui yellow ribbon label">呆子排行榜</a><span>時間到了沒作答。</span>
    <table class="ui celled table">
  <thead>
    <tr><th>玩家暱稱</th>
    <th>次數</th>
  </tr></thead>
  <tbody>
  <?php while($rs5 = $result5->fetch_array(MYSQLI_ASSOC)) { ?>
    <tr>
      <td>
        <h4 class="ui header">
          <div class="content"><?php echo $rs5["user_nickname"]; ?> <div class="sub header">@<?php echo $rs5["user_username"]; ?></div>
        </div>
      </h4>
      </td>
      <td>
        <?php echo $rs5["count(anshistory.his_ans='((逾時作答))')"]; ?>次
      </td>
    </tr>
    <?php } ?>
  </tbody>
</table>
    </div>
  </div>
    <div class="column">
    <div class="ui raised segment">
    <a class="ui black ribbon label">窮人排行榜</a><span>領補助最多次的人。</span>
    <table class="ui celled table">
  <thead>
    <tr><th>玩家暱稱</th>
    <th>次數</th>
  </tr></thead>
  <tbody>
  <?php while($rs6 = $result6->fetch_array(MYSQLI_ASSOC)) { ?>
    <tr>
      <td>
        <h4 class="ui header">
          <div class="content"><?php echo $rs6["user_nickname"]; ?> <div class="sub header">@<?php echo $rs6["user_username"]; ?></div>
        </div>
      </h4>
      </td>
      <td>
        <?php echo $rs6["count(moneyhistory.user_id)"]; ?>次
      </td>
    </tr>
    <?php } ?>
  </tbody>
</table>
    </div>
  </div>
</div>
  </div>



<?php include("php/footer.php");
$conn->close();
 ?>