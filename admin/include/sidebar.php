<div class="span3">
					<div class="sidebar">


<ul class="widget widget-menu unstyled " >
							<li style="background:green">
								<a class="collapsed" data-toggle="collapse" href="#togglePages"style="color:White;background-color: black"  >
									<i class="menu-icon icon-cog"></i>
									<i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>
									Manage Students Complaints
								</a>
								<ul id="togglePages" class="collapse unstyled">
									<li>
										<a href="notprocess-complaint.php" style="color:white;background-color: black">
											<i class="icon-tasks"></i>
											Not Process Yet Complaint
											<?php
$rt = mysqli_query($con,"SELECT * FROM tblcomplaints where status is null");
$num1 = mysqli_num_rows($rt);
{?>

											<b class="label orange pull-right"><?php echo htmlentities($num1); ?></b>
											<?php } ?>
										</a>
									</li>
									<li>
										<a href="inprocess-complaint.php" style="color:white; background-color: black">
											<i class="icon-tasks"></i>
											Pending Complaint
                   <?php
  $status="in Process";
$rt = mysqli_query($con,"SELECT * FROM tblcomplaints where status='$status'");
$num1 = mysqli_num_rows($rt);
{?><b class="label orange pull-right"><?php echo htmlentities($num1); ?></b>
<?php } ?>
										</a>
									</li>
									<li>
										<a href="closed-complaint.php" style="color:white;background-color: black ">
											<i class="icon-inbox"></i>
											Closed Complaints
	     <?php
  $status="closed";
$rt = mysqli_query($con,"SELECT * FROM tblcomplaints where status='$status'");
$num1 = mysqli_num_rows($rt);
{?><b class="label green pull-right"><?php echo htmlentities($num1); ?></b>
<?php } ?>

										</a>
									</li>
								</ul>
							</li>

							<li>
								<a href="manage-users.php" style="color:white; ">
									<i class="menu-icon icon-group"></i>
									Manage Students
								</a>
							</li>
						</ul>


						<ul class="widget widget-menu unstyled">
                                <li><a href="category.php" style="color:white; "><i class="menu-icon icon-tasks"></i> Add Category </a></li>
                                <li><a href="report.php" style="color:white; "><i class="menu-icon icon-tasks"></i>Reports</a></li>
                              <!--   <li><a href="state.php"><i class="menu-icon icon-paste"></i>Add School</a></li> -->


                            </ul><!--/.widget-nav-->

						<ul class="widget widget-menu unstyled">
							<li><a href="user-logs.php" style="color:white; "><i class="menu-icon icon-tasks"></i>Students Login Log </a></li>

							<li>
								<a href="logout.php" style="color:white; ">
									<i class="menu-icon icon-signout"></i>
									Logout
								</a>
							</li>
						</ul>

					</div><!--/.sidebar-->
				</div><!--/.span3-->
