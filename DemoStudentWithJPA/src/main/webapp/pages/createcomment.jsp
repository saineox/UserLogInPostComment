<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<!-- <meta charset="ISO-8601"> -->
			<meta charset="ISO-8859-1">
			<title>Create Your Comment For Post</title>
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
			<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
				<style>
				body {
				  margin: 0;
				  padding: 0;
				  background-color: #7adceb;
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
					  <a class="nav-link" href="#"onClick="history.go(-1)">Home
						<span class="sr-only">(current)</span>
					  </a>
					</li>
					<!-- <li class="nav-item">
					  <a class="nav-link icon-edit" href="createpost" >Create Post</a>
					</li> -->
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
					  <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
					</div>
				  </form>
				</div>
				<!-- Collapsible content -->
			  
			  </nav>


			<div class="container">
				<div class="my-3 p-3 bg-white rounded shadow-sm">

				<div class="col-md-8 col-md-offset-2">
					<a href="#" onClick="history.go(-1)">
						<h4>${post.post_title}</h4>
					</a>
					<p>${post.post_info}</p>
					<div>
						<span class="badge badge-success">Posted 2012-08-02 20:47:04</span>
					</div>
					<hr>



					<div class="row d-flex justify-content-center mt-100 mb-100">
						<div class="col-lg-6">
							<div class="card">
								<div class="card-body text-center">
									<h4 class="card-title">Latest Comments</h4>
								</div>
								<div class="comment-widgets">
									<!-- Comment Row -->
									<c:forEach items="${commentList}" var="comment" varStatus="loop">

										<div class="d-flex flex-row comment-row m-t-0">
											<div class="p-2"><img
													src="https://avatars.githubusercontent.com/u/36266507?v=4"
													alt="user" width="50" class="rounded-circle"></div>
											<div class="comment-text w-100">
												<h6 class="font-medium">${user.user_name}</h6>
												<span class="m-b-15 d-block">
													<a href="#" onClick="history.go(-1)">
														<c:out value="${comment.user_comm}" />
													</a>
												</span>
												<div class="comment-footer"> <span
														class="text-muted float-right">${comment.comment_id}April
														14, 2019</span> <a href="#" onClick="history.go(-1)"><button
															type="button" class="btn btn-success btn-sm">Go
															Back</button></a> </div>
											</div>
										</div> <!-- Comment Row -->


									</c:forEach>
								</div> <!-- Card -->
							</div>
						</div>
					</div>




					<h1>Create Comment</h1>

					<form action="/commentadd" method="POST">
						<input type="hidden" name="user_id" value=${user.user_id}>
						<input type="hidden" name="user_name" value=${user.user_name}>
						<input type="hidden" name="post_id" value=${post_id}>


						<div class="form-group">
							<label for="user_comm">comment <span class="require">*</span></label>

							<input type="text" class="form-control" name="user_comm" />
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