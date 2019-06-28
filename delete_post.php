<?php 
 session_start();
 include("dbconfig.php");
if($_SESSION['name']=='')
  {
     header('location:reg.php');
  }

?>

<?php 

 if(isset($_GET['pid']))
 {  
 	$ps_id=$_GET['pid'];
 	// verwijder de post
       $sql3 = mysqli_query($con,'DELETE FROM posts WHERE post_id = "'.$_GET['pid'].'"') OR die (mysqli_error($con));

       
      if($sql3)
      {
    	header("location:my_task.php");
      }

 }

?>