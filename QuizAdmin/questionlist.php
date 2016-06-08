<?php include_once("php/connection.php");
include_once("php/AuthAdmin.php");
$webtitle="題目清單";
include("php/header.php");
if(isset($_GET['id'])){
    $result = $conn->query("SELECT * FROM question Where qus_id='".$_GET['id']."'");
    $rscount=$result->num_rows;

  }else{
    $result = $conn->query("SELECT * FROM question");
    $rscount=$result->num_rows;
}
include_once("php/menu.php");
 ?>
  
  <div class="ui main text container">
    <h2 class="ui header">
      <i class="help circle icon"></i>
      <div class="content">題目清單<div class="sub header">顯示目前系統題庫</div></div>
    </h2>
    <div class="ui raised segment">
    <a class="ui pink ribbon label">所有題目清單</a>
    <table class="ui celled table">
  <thead>
    <tr>
    <th>序號</th>
    <th>題目</th>
    <th>選項A</th>
    <th>選項B</th>
    <th>選項C</th>
  </tr></thead>
  <tbody>
  <?php while($rs = $result->fetch_array(MYSQLI_ASSOC)) { ?>
    <tr>
      <td>
        <?php echo $rs["qus_id"]; ?>
      </td>
      <td>
        <a href="answerlist.php?qus_id=<?php echo $rs["qus_id"]; ?>"><?php echo $rs["qus_subject"]; ?></a>
      </td>
      <td <?php if($rs["qus_bestAns"] == $rs["qus_ansA"]){
              echo "class='positive'";
            }else{
              echo "class='negative'";
            } ?> ><?php
            if($rs["qus_bestAns"] == $rs["qus_ansA"]){
              echo "<i class='icon checkmark'></i>";
            }else{
              echo "<i class='icon close'></i>";
            }
             echo $rs["qus_ansA"]; ?>
      </td>
      <td <?php if($rs["qus_bestAns"] == $rs["qus_ansB"]){
              echo "class='positive'";
            }else{
              echo "class='negative'";
            } ?>>
        <?php if($rs["qus_bestAns"] == $rs["qus_ansB"]){
              echo "<i class='icon checkmark'></i>";
            }else{
              echo "<i class='icon close'></i>";
            }
         echo $rs["qus_ansB"]; ?>
      </td>
      <td <?php if($rs["qus_bestAns"] == $rs["qus_ansC"]){
              echo "class='positive'";
            }else{
              echo "class='negative'";
            } ?>>
        <?php if($rs["qus_bestAns"] == $rs["qus_ansC"]){
              echo "<i class='icon checkmark'></i>";
            }else{
              echo "<i class='icon close'></i>";
            }
            echo $rs["qus_ansC"]; ?>
      </td>
    </tr>
    <?php 
        } ?>
  </tbody>
</table>
    </div>
    </div>



<?php 

include_once("php/footer.php");
$conn->close(); ?>