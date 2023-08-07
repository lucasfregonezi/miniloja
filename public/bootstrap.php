<?php

use Dotenv\Dotenv;
use app\library\Router;

require '../vendor/autoload.php';

session_start();

$dotenv = Dotenv::createImmutable(dirname(__FILE__, 2));
$dotenv->load();

$route = new Router();
