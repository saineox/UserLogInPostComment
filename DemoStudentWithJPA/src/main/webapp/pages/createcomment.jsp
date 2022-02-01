<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="ISO-8859-1">
			<title>Create Your Comment For Post</title>





			<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"
				id="bootstrap-css">
			<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
			<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
			<!------ Include the above in your HEAD tag ---------->
		</head>

		<body>
			<!-- <h1 class="h2">Welcome to Blog user id: ${user.user_id} Name: ${user.user_name}</h1> -->

			<div class="container">
				<div class="row">
					<div class="alert alert-primary" role="alert">
						Welcome to Blog system id: ${user.user_id} Name:
					${user.user_name}
					  </div>

					<div class="col-md-8 col-md-offset-2">
						<a href="#" onClick="history.go(-1)">
							<h1>${post.post_title}</h1>
						</a>
						<p>${post.post_info}</p>
						<div>
							<span class="badge badge-success">Posted 2012-08-02 20:47:04</span>
							<div class="pull-right"><span class="label">alice</span> <span class="label">story</span>
								<span class="label">blog</span> <span class="label">personal</span></div>
						</div>
						<hr>

						<table>
							<c:forEach items="${commentList}" var="comment" varStatus="loop">
								<tr>
									<td>
										<h4><a href="#" onClick="history.go(-1)">
												<c:out value="${comment.user_comm}" />
											</a>
										</h4>
										<p>
											${comment.user_comm}
										</p>
										<div>
											<span class="badge badge-success">Posted 2012-08-02 20:47:04</span>
											<div class="pull-right">

												<!-- <button type="button" class="btn btn-mini  btn-inverse"><a
														href="/commentdel/${comment.comment_id}"><i
															class="icon-comment"></i>
														Mark As Delete Comment</a></button> -->

												<a href="#" onClick="history.go(-1)">Go Back</a>
											</div>
										</div>
										<hr>
									</td>
								</tr>
							</c:forEach>
						</table>



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





		</body>

		</html>