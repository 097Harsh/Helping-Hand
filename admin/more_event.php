<?php 

session_start();



include 'common/connect.php';
//session start
if(!isset($_SESSION['admin_id']))
{
    header('location:index.php');
}

$id = $_SESSION['admin_id'];
$result = $obj->query("select * from user where user_id='$id'");
$row = $result->fetch_object();



//session close


$id=$_GET['moreid'];
$result1 = $obj->query("select * from event where e_id='$id'");

$row1 = $result1->fetch_object();




?>
<!DOCTYPE HTML>
<html>
<head>
<title>event details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Glance Design Dashboard Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons CSS -->

 <!-- side nav css file -->
 <link href='css/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
 <!-- side nav css file -->
 
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>

<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts--> 

<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->

</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<?php include 'common/sidebar.php' ?>
	</div>
		<!--left-fixed -navigation-->
		
		<!-- header-starts -->
		<?php include 'common/header.php' ?>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="tables">
					<h2 class="title1">Tables</h2>
					<div class="panel-body widget-shadow">
						<h4>event details</h4>
						<table class="table" align="center">
							<thead>
								<tr>
								  <td>e_id</td>
								  <td><?php echo $row1->e_id; ?></td>

								</tr>
								<tr>
								  <td>title</td>
								  <td><?php echo $row1->title; ?></td>
								 
								</tr>
								<tr>
								  <td>description</td>
								  <td><?php echo $row1->description; ?></td>
								 
								</tr>
								<tr>
									<td>date</td>
									<td><?php echo $row1->date; ?></td>
								</tr>
								<tr>
									<td>user_id</td>
									<td><?php echo $row1->user_id; ?></td>
								</tr>
								<tr>
									<td>Status</td>
									<td><?php echo $row1->status; ?></td>
								</tr>
								<tr>
									<td>event_type</td>
									<td><?php echo $row1->event_type; ?></td>
								</tr>
								<?php if($row1->status == 'pending'){  ?>
								<tr>
									
									 <th scope="row"><a href="reject.php?delid=<?php echo $row1->e_id;?>"><button class="btn btn-danger">Reject</button></a></th>
								  <th scope="row"><a href="accept.php?eid=<?php echo $row1->e_id;?>"><button class="btn btn-default">Accept</button></a></th>
									
								</tr>
								<?php }?>
							</thead>
							
						</table>
					</div>
					
				</div>
			</div>
		</div>
		<!--footer-->
		<?php include 'common/footr.php' ?>
        <!--//footer-->
	</div>
	
	<!-- side nav js -->
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->
	
	<!-- Classie --><!-- for toggle left push menu script -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!-- //Classie --><!-- //for toggle left push menu script -->
	
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	
	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>
   
</body>
</html>