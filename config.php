<?php
// HTTP
$host = $_SERVER['HTTP_HOST'];
define('HTTP_SERVER', 'http://'.$host.'/');
define('HTTP_IMAGE', 'http://'.$host.'/image/');
define('HTTP_ADMIN', 'http://'.$host.'/admin/');

// HTTPS
define('HTTPS_SERVER', 'http://'.$host.'/');
define('HTTPS_IMAGE', 'http://'.$host.'/image/');

// DIR
$dir = $_SERVER['DOCUMENT_ROOT'];
define('DIR_APPLICATION', $dir . '/catalog/');
define('DIR_SYSTEM', $dir . '/system/');
define('DIR_LANGUAGE', $dir . '/catalog/language/');
define('DIR_TEMPLATE', $dir . '/catalog/view/theme/');
define('DIR_CONFIG', $dir . '/system/config/');
define('DIR_IMAGE', $dir . '/image/');
define('DIR_CACHE', $dir . '/system/storage/cache/');
define('DIR_DOWNLOAD', $dir . '/system/storage/download/');
define('DIR_LOGS', $dir . '/system/storage/logs/');
define('DIR_MODIFICATION', $dir . '/system/storage/modification/');
define('DIR_UPLOAD', $dir . '/system/storage/upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '123456789');
define('DB_PORT', '3306');
define('DB_DATABASE', 'bioshop');
define('DB_PREFIX', 're_');





