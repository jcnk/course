<!DOCTYPE html>
<html lang="pl">
<head>
  <meta charset='utf-8'>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
  <meta name="viewport" content="width=device-width">  
  <title>Shouts</title>
  <link rel="shortcut icon" href="favicon.ico?v=1">

  <link rel="stylesheet" href="http://necolas.github.com/normalize.css/1.1.0/normalize.css">
  <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/styles/main.css">

</head>
<body>




  <div class="container">

    <h1>some view</h1>
    <?php echo $first_name . ' ' . $last_name ?>

      <div class="alert">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Warning!</strong> Best check yo self, you're not looking too good.
      </div>

    <?php 
      $checkUrl = array(
        'REQUEST_URI',
        'REDIRECT_URL',
        'PATH_INFO',
        'QUERY_STRING',
        'REQUEST_TIME',
      );
      foreach ($checkUrl as $value) {
        if (isset( $_SERVER[$value])) {
          echo '<p>' . $value . ': ' . $_SERVER[$value] . '</p>' .PHP_EOL; 
        }
      }
      if (!empty($_GET)) {
        foreach ($_GET as $key => $param) {
          echo '<p> GET PARAM: ' . $key . ' = ' . $param . '</p>' . PHP_EOL;
        }  
      }
      if (isset($_SERVER['HTTP_X_REQUESTED_WITH'])) {
        $isAjaxRequest = $_SERVER['HTTP_X_REQUESTED_WITH'] == 'XMLHttpRequest';
        if ($isAjaxRequest === true) {
          echo '{ contentType : "XMLHttpRequest" }';
        }
      }
    ?>

  </div>


  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
  <script src="/scripts/main.js"></script>

</body>
</html>