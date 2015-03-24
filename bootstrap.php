<?php

if (defined('ICE_BOOTSTRAP')) {
    return;
}

define('ICE_BOOTSTRAP', true);

define('MODULE_DIR', __DIR__ . '/');
define('MODULE_CONFIG_PATH', 'Config/Ice/Core/Module.php');
define('VENDOR_DIR', dirname(dirname(MODULE_DIR)) . '/');

$loader = require VENDOR_DIR . 'autoload.php';

\Ice\Bootstrap::init($loader);
