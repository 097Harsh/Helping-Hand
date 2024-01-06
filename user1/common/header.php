 
<header id="site-header" class="fixed-top">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-dark stroke">
				<h1> <a class="navbar-brand" href="home.php">
            <img src="assets/images/logo1.png" alt="Your logo" title="Your logo" style="height:60px;" />
						 <span class="sub-logo">Helping-Hand</span>
					</a></h1>
				<!-- if logo is image enable this   
        <a class="navbar-brand" href="#index.html">
            <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
        </a> -->
				<button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
					data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
					<span class="navbar-toggler-icon fa icon-close fa-times"></span>
					</span>
				</button>

				<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item ">
							<a class="nav-link" href="home.php">Home <span class="sr-only"></span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="about.php">About</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="contact.php">Inquiry</a>
						</li>
						<?php 
							if(isset($_SESSION['user_id']))
							{
								?>
								<li class="nav-item">
									<a class="nav-link" href="event.php">Events</a>
								</li>
						
								<li class="nav-item">
									<a class="nav-link" href="feedback.php">Feedback</a>
								</li>
								<li class="nav-item">
									<a class="nav-link " href="donations.php">Donation</a>
								</li>
								<li class="nav-item ">
									<a class="nav-link donate btn btn-style" href="donate.php"><sub>Money-Donate</sub></a>
								</li>
								<li class="nav-item">
									<div class="profile_details">		
									<ul>
										<li class="dropdown profile_details_drop">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
												<div class="profile_img">	
													<span class="prfil-img"><button class="btn btn-style dropdown-toggle"  type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Profile</button> </span> 
													
													<div class="clearfix"></div>	
												</div>	
											</a>
											<ul class="dropdown-menu drp-mnu">
												 
												<li> <a class="dropdown-item" href="my_donation.php"><i class="fa fa-user"></i> My Donation</a> </li> 
												<li> <a class="dropdown-item" href="my_money_donation.php"><i class="fa fa-user"></i> My Money-Donation</a> </li> 
												<li> <a class="dropdown-item" href="m_profile.php"><i class="fa fa-suitcase"></i> Edit Profile</a> </li> 
												<li> <a class="dropdown-item" href="read_event.php"><i class="fa fa-calendar"></i> My Events</a> </li> 
												<li> <a class="dropdown-item" href="logout.php"><i class="fa fa-sign-out"></i> Logout</a> </li>
											</ul>
										</li>
									</ul>
								</div>
								</li>
								
								<?php
							} 
								
								elseif (isset($_SESSION['volunteer_id'])) {
								 ?>
									<li class="nav-item">
									<a class="nav-link" href="volunteer_feedback.php">Feedback</a>
								</li>
									<li class="nav-item">
										<a class="nav-link" href="post_donation.php">Donation post</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="my_post.php">My Post</a>
									</li>
									<li class="nav-item">
									<div class="profile_details">		
									<ul>
										<li class="dropdown profile_details_drop">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
												<div class="profile_img">	
													<span class="prfil-img"><button class="btn btn-style dropdown-toggle"  type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Profile</button> </span> 
													
													<div class="clearfix"></div>	
												</div>	
											</a>
											<ul class="dropdown-menu drp-mnu">
												
												<!-- <li> <a class="dropdown-item" href="my_post.php"><i class="fa fa-user"></i> My Post</a> </li>  -->
												<li> <a class="dropdown-item" href="m_volunteer_profile.php"><i class="fa fa-suitcase"></i> Edit Profile</a> </li> 
												<li> <a class="dropdown-item" href="logout.php"><i class="fa fa-sign-out"></i> Logout</a> </li>
											</ul>
										</li>
									</ul>
								</div>
								</li>

									<?php
								}
							else
							{
								?>
								<li class=	"nav-item">
									<a class="nav-link" href="register.php">Register</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="login.php">Login</a>
								</li>
								<?php
							}
							?>
						

					</ul>
				</div>
				
			</nav>
		</div>
	</header>