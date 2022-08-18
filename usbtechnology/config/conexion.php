<?php
    $host = "localhost";
    $user = "id19370960_admin";
    $clave = "s/7caTJ#5DEGP][!";
    $bd = "id19370960_usbshopi";
    $conexion = mysqli_connect($host,$user,$clave,$bd);
    if (mysqli_connect_errno()){
        echo "No se pudo conectar a la base de datos";
        exit();
    }
    mysqli_select_db($conexion,$bd) or die("No se encuentra la base de datos");
    mysqli_set_charset($conexion,"utf8");
