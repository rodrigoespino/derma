<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

final class myglobal extends Controller
{
    //
    private static $data = array();

    public static function get($key) {
        return (isset(static::$data[$key]) ? static::$data[$key] : null);
    }

    public static function set($key, $value) {
        static::$data[$key] = $value;
    }

    public static function has($key) {
        return isset(static::$data[$key]);
    }
}
