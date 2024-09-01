<?php
require "conn.php";
$mid = $_POST["mid"];

$mysql_qry = "SELECT * from block0 WHERE `mid` = '$mid';";


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

        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        $mysql_qry = "SELECT * from block1 WHERE `mid` = '$mid';";


        $result = $conn->query($mysql_qry);
                
        while($row = $result->fetch_assoc())
        {
            $output =$row;
        }	
        
        if(!empty($output)){
        
            $gaurav["message"] = "success1";
            print json_encode($gaurav + $output);
        
        }
        else{
            $gaurav["message"] = "failure1";
            print json_encode($gaurav);
        
        }
        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        $mysql_qry = "SELECT * from block2 WHERE `mid` = '$mid';";


        $result = $conn->query($mysql_qry);
                
        while($row = $result->fetch_assoc())
        {
            $output =$row;
        }	
        
        if(!empty($output)){
        
            $gaurav["message"] = "success2";
            print json_encode($gaurav + $output);
        
        }
        else{
            $gaurav["message"] = "failure2";
            print json_encode($gaurav);
        
        }
        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        $mysql_qry = "SELECT * from block3 WHERE `mid` = '$mid';";


        $result = $conn->query($mysql_qry);
                
        while($row = $result->fetch_assoc())
        {
            $output =$row;
        }	
        
        if(!empty($output)){
        
            $gaurav["message"] = "success3";
            print json_encode($gaurav + $output);
        
        }
        else{
            $gaurav["message"] = "failure3";
            print json_encode($gaurav);
        
        }
        //////////////////////////////////////////////////////////////////////////////////////////////////////////

?>


