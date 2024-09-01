<?php
require "conn.php";
$mid = $_POST["mid"];

$mysql_qry = "SELECT * from medicineinfo WHERE `id` = '$mid' AND quantity != '0';";


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


