<?php

return function (CM_Config_Node $config) {

    $config->debug = true;

    $config->services['database-master'] = array(
        'class'     => 'CM_Db_Client',
        'arguments' => array(
            array(
                'host'             => 'localhost',
                'port'             => 3306,
                'username'         => 'root',
                'password'         => '',
                'db'               => 'cm-project',
                'reconnectTimeout' => 300
            )
        )
    );
};
