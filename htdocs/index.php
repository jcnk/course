<?php require('../templates/header.tpl'); ?>
<div class="container">


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
<?php require('../templates/footer.tpl'); ?>