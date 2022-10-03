<?php

use Phalcon\Config;
use Phalcon\Logger;

return new Config([
    'databaseMySQL' => [
        'adapter' => 'Mysql',
        'host' => '127.0.0.1',
        'username' => 'candcltd_cafelacigale',
        'password' => 'Cigale@2020',
        'dbname' => 'candcltd_cafe'
    ],

    'databaseOracle' => [
        'adapter' => 'Oracle',
        'dbname' => '172.30.0.27:1521/POLICY',
        'username' => 'WEBUSR',
        'password' => '',
        'dialectClass' => Phalcon\Db\Dialect\Oracle::class,
    ],
    'application' => [
        'controllersDir' => APP_PATH . '/controllers/',
        'modelsDir'      => APP_PATH . '/models/',
        'formsDir'       => APP_PATH . '/forms/',
        'viewsDir'       => APP_PATH . '/views/',
        'libraryDir'     => APP_PATH . '/library/',
        'pluginsDir'     => APP_PATH . '/plugins/',
        'cacheDir'       => BASE_PATH . '/cache/',
        'incubatorDir'   => APP_PATH  . '/incubator/Library/Phalcon/',
        'datatableDir'   => BASE_PATH .'/vendor/m1ome/phalcon-datatables/src/',
        'baseUri'        => '/',
        'publicUrl'      => 'cafelacigale.co.uk',
        'cryptSalt'      => 'eEAfR|_&G&f,+vU]:jFr!!A&+71w1Ms9~8_4L!<@[N@DyaIP_2My|:+.u>/6m,$D'
    ],
    'mail' => [
        'fromName' => 'Cafe La Cigale',
        'fromEmail' => 'info@cafelacigale.co.uk',
        'smtp' => [
            'server' => 'smtp.gmail.com',
            'port' => 587,
            'security' => 'tls',
            'username' => '',
            'password' => ''
        ]
    ],
    'amazon' => [
        'AWSAccessKeyId' => '',
        'AWSSecretKey' => ''
    ],
    'logger' => [
        'path'     => BASE_PATH . '/logs/',
        'format'   => '%date% [%type%] %message%',
        'date'     => 'D j H:i:s',
        'logLevel' => Logger::DEBUG,
        'filename' => 'application.log',
    ],
    // Set to false to disable sending emails (for use in test environment)
    'useMail' => true
]);
