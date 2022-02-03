<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<!-- <meta charset="ISO-8859-1">
			 -->
			<meta charset="ISO-8601">
			<title>Welcome User</title>
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
			<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
			<!------ Include the above in your HEAD tag ---------->
			<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"></script>
		<script>window.jQuery || document.write('<script src="/docs/4.6/assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
		<script src="/docs/4.6/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
			crossorigin="anonymous"></script>

		<script>$(function () {
				'use strict'

				$('[data-toggle="offcanvas"]').on('click', function () {
					$('.offcanvas-collapse').toggleClass('open')
				})
			})
		</script>
			<style>
				body {
					margin: 0;
					padding: 0;
					background-color: #c5e0e4;
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
							<a class="nav-link" href="postdesorted">Home
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link icon-edit" href="createpost">Create Post</a>
						</li>
						<!-- <li class="nav-item">
					  <a class="nav-link" href="#">Pricing</a>
					</li> -->

						<!-- Dropdown -->
						<!-- <li class="nav-item dropdown">
					  <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Dropdown</a>
					  <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Action</a>
						<a class="dropdown-item" href="#">Another action</a>
						<a class="dropdown-item" href="#">Something else here</a>
					  </div>
					</li> -->

					</ul>
					<!-- Links -->
				
					<form class="form-inline">
						<div class="md-form my-0">
							<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" required="true">
						</div>
					</form>
				</div>
				<div>
					<a href="signout"><button type="button" class="btn btn-danger btn-sm "> 
						 <i class="icon-user"></i>				
						SignOut</button></a>
				</div>
				<!-- Collapsible content -->

			</nav>
			<main role="main" class="container">


				<div class="my-3 p-3 bg-white rounded shadow-sm">
					<h6 class="border-bottom border-gray pb-2 mb-0">Recent updates</h6>
					<!-- <div class="alert alert-primary" role="alert">
						This is a primary alert—check it out!
					  </div> -->
					  
					<c:forEach items="${postList}" var="post" varStatus="loop">

						<div class="media text-muted pt-3">
							<svg class="bd-placeholder-img mr-2 rounded" width="32" height="32"
								xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32"
								preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title>
								<rect width="100%" height="100%" fill="#007bff" /><text x="50%" y="50%" fill="#007bff"
									dy=".3em">32x32</text>
							</svg>

							<p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
								<strong class="d-block text-gray-dark"><a href="createcomment/${post.post_id}">
										<c:out value="${post.post_title}" />
									</a>
								</strong>
								<c:out value="${post.post_info}" />
								<%
							
								if(1==1)
								{
								%>
								<p></p>
								<%
								}
								%>
								<a href="#" data-abc="true"><i class="fa fa-heart text-danger"></i></a>
								<span class="badge badge-success">Post Status Deleted: ${post.post_status}</span>
								

								<span class="badge badge-success">Post No:${post.post_id}</span>

							</p>

							<button type="button" class="btn btn-danger btn-xs"><a class="text-white "
									href="postupdate/${post.post_id}"><i class="icon-comment"></i>

									Mark as deleted </a></button>
							<button type="button" class="btn btn-success btn-xs"><a class="text-white"
									href="createcomment/${post.post_id}"><i class="icon-comment"></i>
									Create Comment</a></button>
						</div>

					</c:forEach>



			</main>


	





		</body>

		</html>