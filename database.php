<?php
    $dsn = 'mysql:host=localhost;dbname=D00217205';  //the db name is D00217205 because on host, the database name is that, otherwise use whatever the dbname is.
    $username = 'D00217205'; // this is only used when it is connected to hosting
    $password = 'K1rgEu8c';  // this is only used when it is connected to hosting

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('database_error.php');
        exit();
    }
?>