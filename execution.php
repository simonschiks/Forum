<?php 
    include("dbconfig.php");
?>
<?php
    if(isset($_GET["yesdelete"]))
    {

         $del_id=$_GET["yesdelete"];
         // verwijder de notification
		 $result = mysqli_query($con,'DELETE FROM notification WHERE noti_id = "'.$_GET['yesdelete'].'"') OR die (mysqli_error($con));
        
         if($result)
         {       echo '<script>alert("delete is gelukt");<script>';
                 header("location:notification.php");

         }

    }

?>