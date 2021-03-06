<!DOCTYPE html>
<html>
<head>
<title>Forgot Password</title>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="css/semantic/semantic.min.css">
<script src="css/semantic/semantic.min.js">
	
</script>

<style type="text/css">
body {
	background-color: #DADADA;
}

body>.grid {
	height: 100%;
}

.image {
	margin-top: -100px;
}

.column {
	max-width: 450px;
}

body {
	background-color: white;
}
</style>


</head>

<body>
	<jsp:include page="header.jsp" />

	<div class="ui middle aligned center aligned grid"
		style="padding-top: 180px;">
		<div class="column">
			<div class="ui large image">
				<img src="images/experience.png">
			</div>
			<br> <br>
			<form class="ui large form" method="post"
				action="ForgotPasswordServlet">
				<div class="ui stacked segment">
					<div class="field">
						<div class="ui left icon input">
							<i class="user icon"></i> <input type="text"
								name="secretquestion" placeholder="Secret Question">
						</div>
					</div>
					<div class="field">
						<div class="ui left icon input">
							<i class="lock icon"></i> <input type="password"
								name="secretanswer" placeholder="Answer">
						</div>
					</div>
					<div class="field">
						<div class="ui left icon input">
							<i class="lock icon"></i> <input type="password"
								name="newpassword" placeholder="New Password">
						</div>
					</div>
					<button class="ui fluid large basic submit button green"
						type="submit">Enter</button>
				</div>

				<div class="ui error message"></div>

			</form>
			<h4 class="ui horizontal divider header">or</h4>
			<div class="ui green button fluid"
				onclick="location.href = '\signup.jsp';">Create an Account</div>
		</div>
	</div>


</body>

</html>
