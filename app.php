<?php
/**
 * @file Application run script
 *
 * Run ice application
 *
 * @author dp <denis.a.shestakov@gmail.com>
 *
 * @version 0.4
 * @since 0.0
 */

require_once 'bootstrap.php';

Ice::create(dirname(MODULE_DIR))->run();