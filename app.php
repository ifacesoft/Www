<?php
/**
 * @file Application run script
 *
 * Run ice application
 *
 * @author dp <denis.a.shestakov@gmail.com>
 *
 * @version 0.2
 * @since 0.0
 */

define('VENDOR_DIR', realpath(__DIR__ . '/../_vendor') . '/');

require_once VENDOR_DIR . 'ifacesoft/ice/bootstrap.php';

\Ice\App::run();