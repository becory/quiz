</head>
<body>

  <div class="ui fixed inverted menu">
    <div class="ui container">
      <a href="#" class="header item">
      超級大富翁 遊戲後台
      </a>
      <a href="index.php" class="item">首頁</a>
      <a href="userlist.php" class="item">玩家清單</a>
      <a href="answerlist.php" class="item">答題記錄</a>
      <a href="moneylist.php" class="item">金錢流向</a>
      <a href="questionlist.php" class="item">題目清單</a>
      <div class="right menu">
        <a class="item"><?php echo $_SESSION['nickname']; ?>，歡迎你！</a>
        <a href="login.php?mode=logout" class="item">登出</a>
      </div>
      </div>
    </div>
  </div>