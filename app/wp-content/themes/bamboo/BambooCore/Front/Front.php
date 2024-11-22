<?php

namespace BambooCore\Front;

class Front
{
    private static $templates_root;

    public static function init()
    {
        self::$templates_root = get_template_directory() . '/templates/';
    }

    public static function __renderTemplate(string $tpl_name = '', string $tpl_type = null, array $data = null)
    {

        try {
            if (!$tpl_name) {
                throw new \Exception("Template name can't be empty");
            }
            if (!$tpl_type) {
                throw new \Exception("Template type can't be empty");
            }
            if (file_exists(self::$templates_root . $tpl_type . '/' . $tpl_name . '.php')) {
                get_template_part('templates/' . $tpl_type . '/' . $tpl_name, '', $data);
            } else {
                throw new \Exception("Template does not exist");
            }
        } catch (\Exception $e) {
            echo $e->getMessage() . '<br>' . $e->getFile() . ' in ' . $e->getLine();
        }
    }
}
