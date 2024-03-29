<?php 

include("dbconfig.php");
session_start();

if(isset($_GET["id"])){   	
 	if($_SESSION["name"] == "") {
        header("location:reg.php");
    }
}


function timeAgo($time_ago){
	$time_ago = strtotime($time_ago);
	$cur_time   = time();
	$time_elapsed   = $cur_time - $time_ago;
	$seconds    = $time_elapsed ;
	$minutes    = round($time_elapsed / 60 );
	$hours      = round($time_elapsed / 3600);
	$days       = round($time_elapsed / 86400 );
	$weeks      = round($time_elapsed / 604800);
	$months     = round($time_elapsed / 2600640 );
	$years      = round($time_elapsed / 31207680 );

	if($seconds <= 60){
		return "just now";
	} else if($minutes <= 60){
		if($minutes==1){
			return "one minute ago";
		} else {
			return "$minutes minutes ago";
		}
	} else if($hours <=24){
		if($hours==1){
			return "an hour ago";
		} else{
			return "$hours hrs ago";
		}
	} else if($days <= 7){
		if($days==1){
			return "yesterday";
		} else{
			return "$days days ago";
		}
	} else if($weeks <= 4.3){
		if($weeks==1){
			return "a week ago";
		} else{
			return "$weeks weeks ago";
		}
	} else if($months <=12){
		if($months==1){
			return "a month ago";
		} else{
			return "$months months ago";
		}
	} else {
		if($years==1){
			return "one year ago";
		} else {
			return "$years years ago";
		}
	}
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
 	<meta charset="utf-8">
 	<meta http-equiv="X-UA-Compatible" content="IE=edge">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="../../favicon.ico">
	
 	<!-- http://draganzlatkovski.com/code-projects/toggle-jquery-side-bar-menu-in-bootstrap-free-template/ -->
 	<title>Dashboard Template for Bootstrap</title>
 
 	<!-- jQuery --> 
 	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="components/bootstrap/dist/js/jquery.js"></script> 
 
 	<!-- Bootstrap core CSS -->
 	<link href="components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	
 	<!-- Custom styles for this template -->
	<link href="components/bootstrap/dist/css/simple-sidebar.css" rel="stylesheet">
 	<link rel="stylesheet" href="components/bootstrap/dist/css/postataskbox.css" />	
    <link rel="stylesheet" href="components/bootstrap/dist/css/projectdes.css" />
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"> 
</head>

<body>
 
 
 
 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
 	<div class="container-fluid">
		<div class="navbar-header">
 			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
 				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 			</button>
 			<a class="navbar-brand" href="#menu-toggle" id="menu-toggle"><span class="glyphicon glyphicon-list" aria-hidden="true"></span></a>
 		</div>
 		<div id="navbar" class="navbar-collapse collapse">
			<label class="navbar-text text-center text-primary" style="vertical-align:10px;font-size:medium ">HelpEachOther </label>
			<label class="navbar-text text-center text-primary" style="vertical-align:10px;font-size:medium ">Hello! <font style="font-size:13px"> <?php echo $_SESSION["name"]; ?></font> </label>
			
		   <?php  include("header1.php"); ?>

		</div>
	 </div> 
</nav>
 
 
 
 
 <!--
<div class="center"><button data-toggle="modal" data-target="#squarespaceModal" class="btn btn-primary center-block">Post Task</button></div>
-->

 

 
 
 
 
 
 <div id="wrapper" class="toggled">
 <div class="container-fluid">
 <!-- Sidebar -->
 <div id="sidebar-wrapper">
 <ul class="sidebar-nav">
 <li class="sidebar-brand">
 <br>
 </li>
 <li class="sidebar-brand">
 <a href="#" class="navbar-brand">
  
  
               
 
 </a>
 </li>
 <li>
 <a href="home.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a>
 </li>
 <!--
 <li>
 <a href="#"><span  class="glyphicon glyphicon-comment"  aria-hidden="true"></span> Notification</a>
 </li> 
 
 -->
 <li>
  <a href="mytask.php"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> My Task</a>
 </li>
 <li>
  <a href="Blog.php"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Blog</a>
 </li>
 <li>
 
 <li>
 
 </ul>
 </div>
 <!-- /#sidebar-wrapper -->
 

 
 </div>
 
 <!-- /#page-content-wrapper -->
 </div>
 </div>
 <!-- /#wrapper -->

  <div id="page-content-wrapper">
 <div class="container-fluid">
 <div class="row">
 <div class="col-lg-12">
 <div class="col-lg-4">
<div class="list-group" style="margin-left:0px">
   <a href="user.php" class="list-group-item active" style="background-color:black;">All task</a>
  
	<a href="ourskill.php" class="list-group-item">Profile</a>

  
  	<a href="my_task.php" class="list-group-item">My task</a>
  
	<a href="" data-toggle="modal" data-target="#squarespaceModal" class="list-group-item">Post Task</a>

	<a href="notification.php" class="list-group-item">
		Notification(<?php echo $count; ?>)
	</a>
  
  	<a href="changepass.php" class="list-group-item">Change Password</a>
  	
	<a href="logout1.php" class="list-group-item">Log Out</a>
</div>
		</div>
 
 
 <div class="col-lg-8">
    <?php 
      if(isset($_POST["reply"]))
      {
         $comm=$_POST["comment"];
         $p_id=$_POST["po_id"];
         $c_id=$_POST["commenter_id"];
         

      }


    ?>
  <?php
	 if(!isset($_GET['s_title'])) { $_GET['s_title'] = ''; }
$title = $_GET['s_title'];
//$p_id = $_GET['id'];

$sql1=mysqli_query($con,"select * from posts where post_id='$p_id'");
                    while($comnt1=mysqli_fetch_array($sql1)){
                           $uid=$comnt1["usr_id_p"];
                        }
                        $sql2=mysqli_query($con,"select * from registration where usr_id='$uid'");
                    while($comnt2=mysqli_fetch_array($sql2))
					{
                           $im=$comnt2["image"];
							$naam=$comnt2['name'];
                        }
?>   
   
<div class="container">
    <div class="col-sm-8">
        <div class="panel panel-white post panel-shadow">
            <div class="post-heading">
                <div class="pull-left image">
                <!-- toon hier de foto van de user -->
                    <img src="user_images/<?php echo $im; ?>" class="img-circle avatar" alt="user profile image">
                </div>
                <div class="pull-left meta">
                    <div class="title h5">
                        <a href="#"><b><?php echo $naam; ?></b></a>
                    
                    </div>
                </div>
            </div> 
            <div class="post-description"> 
              
<?php
				
if(!empty($_GET['s_title']) && !empty($_GET['id'])){
	$title = $_GET['s_title'];
	$p_id = $_GET['id'];
}


echo $comm;

?>
             
   
          
                
            </div>

            <div class="post-footer">
				<form action="comment.php" method="post">
                <div class="input-group"> 
                    <textarea class="form-control" cols="100" rows="10" placeholder="Add a comment" type="text" name="comment"></textarea>
                    <input class="form-control"  type="hidden" name="pid" value="<?php echo $p_id;?>">
                    <input class="form-control"  type="hidden" name="comme_id" value="<?php echo $c_id;?>">
                   	<div class="btn-group" role="group" style="margin-top:5px">
						<button type="submit" name="submit_comment"  class="btn btn-primary btn-hover-green" >Post Your Comment</button>
					</div>
                </div>
				
                </form>
                
                	<?php 
					if(!empty($_GET['id'])){
						$p_id = $_GET['id'];
					}
                      
                     $sql=mysqli_query($con,"select * from comments where post_id_c='$p_id'");
                    while($comnt=mysqli_fetch_array($sql)){
							//fetching all posts
							$time_ago = $comnt['comment_time'];

						echo '
                
                <ul class="comments-list">
                    <li class="comment">
                        <a class="pull-left" href="#">
                            <img class="avatar" src="http://bootdey.com/img/Content/user_1.jpg" alt="avatar">
                        </a>
                        <div class="comment-body">
                            <div class="comment-heading">
                                <h4 class="user">	'.$comnt['name'].'</h4>
                                <h5 class="time">'.timeAgo($time_ago).'</h5>
                            </div>
                            <p>'.$comnt['comment'].'</p>
                        </div>
                       
                    </li>
                
                </ul>
                
                ';	
					}	
				?>
                
            </div>
        </div>
    </div>
</div>
     
     
 </div>
 </div>
 </div>
 </div>
  
 



 
<!-- Bootstrap Core JavaScript -->
<script src="components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Menu Toggle Script -->
<script>
 $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>


	<script type="text/javascript">
		$(document).ready(function(){
			$('.status').click(function() { $('.arrow').css("left", 0);});
			$('.photos').click(function() { $('.arrow').css("left", 146);});
		});
	</script>
	

</body>
</html>