<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DashBord/title>
	<link
		href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css"> <script
		src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> <!------ Include the above in your HEAD tag ---------->
</head>
<body>







	<div id="throbber" style="display: none; min-height: 120px;"></div>
	<div id="noty-holder"></div>
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> <img src="/" alt="LOGO">
				</a>
			</div>
			<!-- Top Menu Items -->
			<ul class="nav navbar-right top-nav">
				<li><a href="#" data-placement="bottom" data-toggle="tooltip"
					data-original-title="Stats"><i class="fa fa-bar-chart-o"></i> </a>
				</li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Admin User <b class="fa fa-angle-down"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="fa fa-fw fa-user"></i> Edit
								Profile</a></li>
						<li><a href="#"><i class="fa fa-fw fa-cog"></i> Change
								Password</a></li>
						<li class="divider"></li>
						<li><a href="#"><i class="fa fa-fw fa-power-off"></i>
								Logout</a></li>
					</ul></li>
			</ul>
			<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav side-nav">
					<li><a href="#" data-toggle="collapse"
						data-target="#submenu-1"><i class="fa fa-fw fa-search"></i>
							MENU 1 <i class="fa fa-fw fa-angle-down pull-right"></i></a>
						<ul id="submenu-1" class="collapse">
							<li><a href="#"><i class="fa fa-angle-double-right"></i>
									SUBMENU 1.1</a></li>
							<li><a href="#"><i class="fa fa-angle-double-right"></i>
									SUBMENU 1.2</a></li>
							<li><a href="#"><i class="fa fa-angle-double-right"></i>
									SUBMENU 1.3</a></li>
						</ul></li>
					<li><a href="#" data-toggle="collapse"
						data-target="#submenu-2"><i class="fa fa-fw fa-star"></i> MENU
							2 <i class="fa fa-fw fa-angle-down pull-right"></i></a>
						<ul id="submenu-2" class="collapse">
							<li><a href="#"><i class="fa fa-angle-double-right"></i>
									SUBMENU 2.1</a></li>
							<li><a href="#"><i class="fa fa-angle-double-right"></i>
									SUBMENU 2.2</a></li>
							<li><a href="#"><i class="fa fa-angle-double-right"></i>
									SUBMENU 2.3</a></li>
						</ul></li>
					<li><a href="investigaciones/favoritas"><i
							class="fa fa-fw fa-user-plus"></i> MENU 3</a></li>
					<li><a href="sugerencias"><i
							class="fa fa-fw fa-paper-plane-o"></i> MENU 4</a></li>
					<li><a href="faq"><i
							class="fa fa-fw fa fa-question-circle"></i> MENU 5</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>


		<div id="page-wrapper">
			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row" id="main">
					<div class="col-sm-12 col-md-12 well" id="content">
						<h1>Welcome Word!</h1>
					</div>
				</div>
				<!-- /.row -->

				<a href="#"> Gallery</a>

				<div class="row">
					<div class="col-lg-12">
						<div class="panel with-nav-tabs panel-primary">
							<div class="panel-heading">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tab1primary"
										data-toggle="tab"><span class="glyphicon glyphicon-font"></span>
											Articole</a></li>
									<li><a href="#tab2primary" data-toggle="tab"><span
											class="glyphicon glyphicon-heart-empty"></span> Galerie</a></li>
									<li><a href="#tab3primary" data-toggle="tab">Primary 3</a></li>
									<li class="dropdown"><a href="#" data-toggle="dropdown">Dropdown
											<span class="caret"></span>
									</a>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#tab4primary" data-toggle="tab">Primary
													4</a></li>
											<li><a href="#tab5primary" data-toggle="tab">Primary
													5</a></li>
										</ul></li>
								</ul>
							</div>
							<div class="panel-body">
								<div class="tab-content">
									<div class="tab-pane fade in active" id="tab1primary">
										<div class="well">
											<div class="media">
												<a class="pull-left" href="#"> <img class="media-object"
													src="http://i1.wp.com/www.moneybook.ro/wp-content/uploads/2016/02/polen-crud.jpg?resize=768%2C480">
												</a>
												<div class="media-body">
													<h4 class="media-heading">APILARNILUL</h4>
													<p class="text">By Francisco</p>
													<p>Apilarnilul este un produs apicol natural, obținut
														din larvele de trântor care constituie materia primă
														principală. Acestea la vârsta de 7 zile sunt recoltate
														integral obținându-se astfel apilarnilul.În mod normal,
														sezonul apicol activ este în perioada mai-iulie. Asta
														într-o colonie de albine constituită ca o unitate
														biologică. Într-o astfel de colonie, numărul indivizilor
														masculi este de 400-1800 trântori rareori numărul lor
														depășind 2000. Într-o colonie de albine numărul de
														trântori pe care îi crește și îi tolerează este limitat și
														depinde de comportamentul coloniei ca un tot unitar.</p>
													<ul class="list-inline list-unstyled">
														<li><span><i
																class="glyphicon glyphicon-calendar"></i> 1 days, 8
																hours </span></li>
														<li>|</li>
														<span><i class="glyphicon glyphicon-comment"></i> 2
															comments</span>
														<li>|</li>
														<li><span class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star-empty"></span></li>
														<li>|</li>
														<li>
															<!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
															<span><i class="fa fa-facebook-square"></i></span> <span><i
																class="fa fa-twitter-square"></i></span> <span><i
																class="fa fa-google-plus-square"></i></span>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="well">
											<div class="media">
												<a class="pull-left" href="#"> <img class="media-object"
													src="http://i0.wp.com/www.moneybook.ro/wp-content/uploads/2016/08/images_8.jpg?resize=299%2C224">
												</a>
												<div class="media-body">
													<h4 class="media-heading">Ziua Femeii</h4>
													<p class="text-right">By Anailuj</p>
													<p>In fiecare an, pe 8 Martie, trebuie sa le spunem din
														toata inima La Multi Ani! De cand se serbeaza Ziua Femeii?
														Am putea spune ca Ziua femeii, Ziua mamei se serbeaza inca
														de pe vremea grecilor antici. In fiecare primavara, ei o
														serbau pe Rhea, mama tuturor zeilor. In cultura multor
														tari, 8 Martie s-a transformat dintr-o simpla zi a
														calendarului in sarbatoarea primaverii, in ziua in care
														mamele, bunicile, sotiile, prietenele, surorile, fiicele,
														colegele, primesc flori si mici daruri simbolice care
														subliniaza rolul lor acasa, in familie, in societate. 1907
														– La Copenhaga a avut loc prima Conferinta a femeilor
														socialiste, la initiativa ziaristei germane Clara Zetkin,
														care conducea din 1890 revista “Die Gleichheit”
														(Egalitatea).</p>
													<ul class="list-inline list-unstyled">
														<li><span><i
																class="glyphicon glyphicon-calendar"></i> 2 days, 8
																hours </span></li>
														<li>|</li>
														<span><i class="glyphicon glyphicon-comment"></i> 2
															comments</span>
														<li>|</li>
														<li><span class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star-empty"></span></li>
														<li>|</li>
														<li>
															<!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
															<span><i class="fa fa-facebook-square"></i></span> <span><i
																class="fa fa-twitter-square"></i></span> <span><i
																class="fa fa-google-plus-square"></i></span>
														</li>
													</ul>
												</div>
											</div>





										</div>
									</div>
									<div class="tab-pane fade" id="tab2primary">
										<div class="well">
											<div class="media">
												<a class="pull-left" href="#"> <img class="media-object"
													src="http://www.moneybook.ro/moneybook-feed.png">
												</a>
												<div class="media-body">
													<h4 class="media-heading">Galerie</h4>
													<p class="text">By Manager</p>
													<p>
														<img width="300" height="300"
															src="http://i1.wp.com/www.moneybook.ro/wp-content/uploads/2016/08/maieu-ALB_1.jpg?resize=300%2C300"
															class="attachment-image" alt="image1" title="image"
															sizes="(max-width: 300px) 100vw, 300px"> <img
															width="300" height="300"
															src="http://i1.wp.com/www.moneybook.ro/wp-content/uploads/2015/11/8Martie.png?resize=300%2C265"
															class="attachment-image" alt="image1" title="image"
															sizes="(max-width: 300px) 100vw, 300px"> <img
															width="300" height="300"
															src="http://i0.wp.com/www.moneybook.ro/wp-content/uploads/2014/12/pisici.jpg?w=537"
															class="attachment-image" alt="image1" title="image"
															sizes="(max-width: 300px) 100vw, 300px"> <img
															width="300" height="300"
															src="http://i0.wp.com/www.moneybook.ro/wp-content/uploads/2014/10/beagle1.jpg?w=448"
															class="attachment-image" alt="image1" title="image"
															sizes="(max-width: 300px) 100vw, 300px">
													</p>
													<ul class="list-inline list-unstyled">
														<li><span><i
																class="glyphicon glyphicon-calendar"></i> 1 days, 8
																hours </span></li>
														<li>|</li>
														<span><i class="glyphicon glyphicon-comment"></i> 2
															comments</span>
														<li>|</li>
														<li><span class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star-empty"></span></li>
														<li>|</li>
														<li>
															<!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
															<span><i class="fa fa-facebook-square"></i></span> <span><i
																class="fa fa-twitter-square"></i></span> <span><i
																class="fa fa-google-plus-square"></i></span>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="well">
											<div class="media">
												<a class="pull-left" href="#"> <img class="media-object"
													src="http://www.moneybook.ro/moneybook-feed.png">
												</a>
												<div class="media-body">
													<h4 class="media-heading">Galerie2</h4>
													<p class="text-right">By Manager</p>
													<p>
														<img width="300" height="300"
															src="http://dev.webofiice.ro/anunt/oc-content/uploads/0/7_thumbnail.jpg"
															class="attachment-image" alt="image1" title="image"
															sizes="(max-width: 300px) 100vw, 300px"> <img
															width="300" height="300"
															src="http://dev.webofiice.ro/anunt/oc-content/uploads/0/6_thumbnail.jpg"
															class="attachment-image" alt="image1" title="image"
															sizes="(max-width: 300px) 100vw, 300px"> <img
															width="300" height="300"
															src="http://i0.wp.com/www.moneybook.ro/wp-content/uploads/2014/12/pisici.jpg?w=537"
															class="attachment-image" alt="image1" title="image"
															sizes="(max-width: 300px) 100vw, 300px"> <img
															width="300" height="300"
															src="http://i0.wp.com/www.moneybook.ro/wp-content/uploads/2014/10/beagle1.jpg?w=448"
															class="attachment-image" alt="image1" title="image"
															sizes="(max-width: 300px) 100vw, 300px">
													</p>
													<ul class="list-inline list-unstyled">
														<li><span><i
																class="glyphicon glyphicon-calendar"></i> 2 days, 8
																hours </span></li>
														<li>|</li>
														<span><i class="glyphicon glyphicon-comment"></i> 2
															comments</span>
														<li>|</li>
														<li><span class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star"></span> <span
															class="glyphicon glyphicon-star-empty"></span></li>
														<li>|</li>
														<li>
															<!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
															<span><i class="fa fa-facebook-square"></i></span> <span><i
																class="fa fa-twitter-square"></i></span> <span><i
																class="fa fa-google-plus-square"></i></span>
														</li>
													</ul>
												</div>
											</div>





										</div>
									</div>
									<div class="tab-pane fade" id="tab3primary">Primary 3</div>
									<div class="tab-pane fade" id="tab4primary">Primary 4</div>
									<div class="tab-pane fade" id="tab5primary">Primary 5</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!-- /#wrapper -->

				<!-- jQuery -->
				<script src="js/jquery.js"></script>

				<!-- Bootstrap Core JavaScript -->
				<script src="js/bootstrap.min.js"></script>




			</div>
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->













</body>
</html>