<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Create Your Post</title>


		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<style>
			body {
				margin: 0;
				padding: 0;
				background-color:  #c5e0e4;;
				height: 100vh;
			}
		</style>
		
	</head>

	<body>
		<nav class="navbar navbar-expand-lg bg-warning warning-color">

			<!-- Navbar brand -->
			<a class="navbar-brand" href="#">Welcome To Blog
				${user.user_name}</a>

				<!-- Collapse button -->
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
					aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- Collapsible content -->
				<div class="collapse navbar-collapse" id="basicExampleNav">

					<!-- Links -->
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active">
							<a class="nav-link" href="#" onClick="history.go(-1)">Home
								<span class="sr-only">(current)</span>
							</a>
						</li>

					</ul>
					<!-- Links -->

					<form class="form-inline">
						<div class="md-form my-0">
							<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
						</div>
					</form>
				</div>
				<!-- Collapsible content -->

		</nav>
<div class="my-3 p-3 bg-white rounded shadow-sm">
		<div class="container">
			<div class="row">

				<div class="col-md-8 col-md-offset-2">

					<h1>Create post</h1>

					<form action="/postadd" method="POST">



						<div class="form-group">
							<input type="hidden" name="user_id" value=${user.user_id}>
							<input type="hidden" name="user_name" value=${user.user_name}>
							<label for="title">Title <span class="require">*</span></label>
							<input type="text" class="form-control" name="post_title" />
						</div>

						<div class="form-group">
							<label for="description">Description</label>
							<textarea rows="5" class="form-control" name="post_info"></textarea>
						</div>

						<div class="form-group">
							<p><span class="require">*</span> - required fields</p>
						</div>

						<div class="form-group">
							<button type="submit" class="btn btn-primary">
								Create
							</button>
							<button class="btn btn-default">
								Cancel
							</button>
						</div>

					</form>
				</div>

			</div>
	
		</div>
	
	
	</div>





	</body>

	</html>