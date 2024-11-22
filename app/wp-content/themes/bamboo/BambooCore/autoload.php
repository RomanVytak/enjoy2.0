<?php
spl_autoload_register(function ($namespace) {
    try {
        if(strrpos($namespace, "BambooCore") !== false){
            require_once wp_normalize_path(TEMPLATEPATH.'/'.$namespace.'.php');
        }
    }catch (\Exception $e){
        echo $e->getMessage();
    }
});