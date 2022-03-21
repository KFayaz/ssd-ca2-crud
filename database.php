<?php
    $dsn = 'mysql:host=localhost;dbname=categories';  //the db name is D00217205 because on host, the database name is that, otherwise use whatever the dbname is.
    $username = 'root'; // this is only used when it is connected to hosting
    $password = '';  // this is only used when it is connected to hosting

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('database_error.php');
        exit();
    }
?>