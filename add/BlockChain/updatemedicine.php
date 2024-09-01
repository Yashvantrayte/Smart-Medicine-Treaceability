<?php
require "conn.php";
$mid = $_POST["mid"];

$mysql_qry = "UPDATE `medicineinfo` SET `quantity` = `quantity` - 1 WHERE `medicineinfo`.`id` = '$mid';";


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


