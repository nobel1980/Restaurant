<?php

use Phalcon\Loader;

$loader = new Loader();

/**
 * We're a registering a set of directories taken from the configuration file
 */
$loader->registerNamespaces([
    'Cafe\Models'      => $config->application->modelsDir,
    'Cafe\Controllers' => $config->application->controllersDir,
    'Cafe\Forms'       => $config->application->formsDir,
    'Cafe'             => $config->application->libraryDir
]);

$loader->register();

// Use composer autoloader to load vendor classes
require_once BASE_PATH . '/vendor/autoload.php';
