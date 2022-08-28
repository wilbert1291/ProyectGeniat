<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInite3b21a3dbe043be0006ad7b53141c30e
{
    public static $prefixLengthsPsr4 = array (
        'F' => 
        array (
            'Firebase\\JWT\\' => 13,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Firebase\\JWT\\' => 
        array (
            0 => __DIR__ . '/..' . '/firebase/php-jwt/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInite3b21a3dbe043be0006ad7b53141c30e::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInite3b21a3dbe043be0006ad7b53141c30e::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInite3b21a3dbe043be0006ad7b53141c30e::$classMap;

        }, null, ClassLoader::class);
    }
}
