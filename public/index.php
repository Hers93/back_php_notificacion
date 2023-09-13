<?php

use App\Kernel;

require_once dirname(__DIR__).'/vendor/autoload_runtime.php';


return function (array $context) {
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
    header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
    $_SERVER['REQUEST_METHOD'];
    return new Kernel($context['APP_ENV'], (bool) $context['APP_DEBUG']);
};
