<?php 

    define('BASE_PATH', realpath(dirname(dirname(__FILE__))));

    require_once BASE_PATH . '/config/sql.php';


    //require_once $APP_PATH . 'helper/RequestHelper.php';
    //require_once $APP_PATH . 'helper/RouterHelper.php';

    require_once BASE_PATH . '/application/view/ApplicationView.php';
    require_once BASE_PATH . '/application/model/ApplicationModel.php';
    require_once BASE_PATH . '/application/controller/ApplicationController.php'; 


    if (isset($_GET['controller'])) {

        include BASE_PATH . '/application/controller/'. $_GET['controller'] .'Controller.php';

        $obj = new ShoutController();
        $obj->$_GET['action']();

    }
