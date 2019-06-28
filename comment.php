<?php 
    include("dbconfig.php");
    session_start();
?>
<?php 
  
    if($_SESSION["name"]=="")
    {
        header("location:reg.php");

    }
    
?>
<?php
 if(isset($_POST["uid"]))
 {
   $com=$_POST["comment"];
   $comenterid=$_POST["uid"];    // $_POST["comme_id"];
   
//postusr==commentuser
   //$u_id=$_POST["uid"];
   $p_id=$_POST["pid"];
   $uid=$_SESSION["id"];
   $date=date("Y-m-d H:i:s");
   $sql2=mysqli_query($con,"select usr_id_p from posts where post_id='$p_id'");
   while($row=mysqli_fetch_array($sql2))
   {
      $user=$row["usr_id_p"];
       
   }
   // sla hier het commentaar en / of notificatie op
	 $query = "INSERT INTO comments(post_id_c, user_id_c, comment, comment_time)
	 	values($p_id, $uid, '$com', '$date')";
	 $sql = mysqli_query($con, $query);
	 
    if($sql)
    {
      header("location:user.php");

    }
 }  
 

?>