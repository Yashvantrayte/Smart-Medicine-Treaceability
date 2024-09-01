<?php
require "conn.php";
$mid = $_POST["mid"];
$data = $_POST["data"];
$previousHash = $_POST["previousHash"];
$myhash = $_POST["myhash"];
$created_date = date('Y-m-d H:i:s');

 if (!isUserExist($mid) == true) {

    
$mysql_qry = "INSERT INTO `block3` (`id`,`mid`, `data`, `hash`, `previousHash`, `timeStamp`)
 VALUES (NULL, '$mid', '$data', '$myhash', '$previousHash', '$created_date');";
        
        if($result = $conn->query($mysql_qry)){
        
            $gaurav["message"] = "success";
            print json_encode($gaurav);
        
        }
        else{
            $gaurav["message"] = "failure";
            print json_encode($gaurav);
        
        }
    }else{
        $gaurav["message"] = "user already exist";
        print json_encode($gaurav);
    
    }


        function isUserExist($mid)
    {
        require "conn.php";
        $sql="SELECT * FROM block3 WHERE mid = '".$mid."';";

                $result = $conn->query($sql);
                
                while($row = $result->fetch_assoc())
                {
                	$output[]=$row;
                }	
                
                if(!empty($output)){
                
                	return true;
                
                }
                else{
                	return false;
                
                }
    }
?>