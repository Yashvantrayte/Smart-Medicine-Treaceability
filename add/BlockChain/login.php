<?php
require "conn.php";
$email = $_POST["email"];
$password = $_POST["password"];
$role = $_POST["role"];

$mysql_qry = "SELECT * from $role WHERE email = '$email' AND password = '$password';";


$result = $conn->query($mysql_qry);
                
        while($row = $result->fetch_assoc())
        {
            $output =$row;
        }	
        
        if(!empty($output)){
        
            $gaurav["message"] = "success";
            print json_encode($gaurav + $output);
        
        }
        else{
            $gaurav["message"] = "failure";
            print json_encode($gaurav);
        
        }

?>


