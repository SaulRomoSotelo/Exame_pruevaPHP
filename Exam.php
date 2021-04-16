<?php

     function myconnection(){
        $db_host="localhost:3308";
        $db_name = "examdevelop";
        $db_user = "root";
        $db_pass = "S@ul2207";

        
        $connection = mysqli_connect($db_host,$db_user,$db_pass,$db_name);
        if(mysqli_connect_errno()){
            echo "error in connection";
            exit();
        }
        mysqli_set_charset($connection,"utf8");
        echo " <br> 1- user <br> ";
        $dbquery = "SELECT * FROM users_c";
        $resulting = mysqli_query($connection, $dbquery);
        while ( ($row = $resulting->fetch_row())==true ) {
           printf ("id = %s (name = %s job_id = %s)\n", $row[0], $row[1], $row[3]);
           echo "<br>";
        }
        echo "<br> 2- job <br>";
        $dbquery2 = "SELECT * FROM job";
        $resulting2 = mysqli_query($connection, $dbquery2);
        while ( ($row2 = $resulting2->fetch_row())==true ) {
           printf ("id_job = %s (name_job= %s)\n", $row2[0], $row2[1]);
           echo "<br>";
        }
        $name_job="mercadologo";

        $dbquery3 = "INSERT INTO job (name) VALUES ('".$name_job."')";
        //$resulting3 = mysqli_query($connection, $dbquery3);
        $name_user="jesus";
        $lastname="perez";
        $job_id =3;
        $dbquery4 = "INSERT INTO users_c (name, Last_name,job_id) VALUES ('".$name_user."','".$lastname."','".$job_id."')";
        $resulting4 = mysqli_query($connection, $dbquery4);
        mysqli_close( $connection);
       
     }
    
    echo "hello Application do by Saul Alejandro Romo Sotelo ";
    myconnection();

?>