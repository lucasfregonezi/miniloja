<?php

use app\library\Router;

require '../vendor/autoload.php';

session_start();

try {

    $route = new Router();
    $route->add('/', 'GET', 'HomeController:index');
    $route->add('/cart', 'GET', 'CartController:index');
    $route->add('/cart/add', 'GET', 'CartController:add');
    $route->add('/cart/remove', 'GET', 'CartController:destroy');
    $route->add('/cart/update', 'POST', 'CartController:update');
    $route->add('/login', 'GET', 'LoginController:index');
    $route->add('/login', 'POST', 'LoginController:store');
    $route->init();
} catch(Exception $e) {
    var_dump($e->getMessage() . ' | ' . $e->getFile() . ' | line:' . $e->getLine());
}
