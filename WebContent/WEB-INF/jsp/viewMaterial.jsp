<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="css/semantic/semantic.min.css">
<script src="css/semantic/semantic.min.js"></script>



<!-- Include Required Prerequisites -->
<script type="text/javascript"
	src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
<script type="text/javascript"
	src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/bootstrap/3/css/bootstrap.css" />

<!-- Include Date Range Picker -->
<script type="text/javascript"
	src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />

<title>Material details</title>

<style>
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="ui container">
		<br> <br> <br> <br>
		<h1 class="ui header headerc">Information</h1>
		<div class="ui fitted divider"></div>

		<br>

		<div class="ui grid">
			<div class="sixteen wide column">
				<h3 class="ui block header">
					<div class="ui grid">
						<div class="eight wide column">
							<div class="left aligned">Material Details</div>
						</div>
					</div>
				</h3>
				<div class="ui segment">
					<div class="ui grid">
						<div class="ui four wide column">
							<div class="ui card">
								<div class="image">
									<img src="images/filler.PNG">
								</div>
								<div class="content">
									<%-- <div class="ui fluid large submit button green"
										onclick="location.href = '\accountdetails.jsp';">Borrow as </div>
									<%=session.getAttribute("Username")%> --%>
									<!-- 	<div class="ui fluid icon input">
										<input type="text" name="daterange" id="dateRangePicker"
											value="01/01/2015 - 01/31/2015" /> <i class="book icon"></i>
									</div>
 -->
									<c:if test="${sessionScope.Username != null}">
										<c:if test="${material.status == 1}">

											<form class="ui form" method="post"
												action="BorrowMaterialServlet">
												<div class="ui action input fluid">
													<input type="text" name="daterange" id="dateRangePicker"
														value="01/01/2015 - 01/31/2015" />
													<div id="borrow" class="ui green right button">Set</div>
												</div>
												<script type="text/javascript">
													var accountType = '${sessionScope.accountType}';

													if (accountType == 1) {
														$(function() {
															$(
																	'#dateRangePicker')
																	.daterangepicker(
																			{
																				"dateLimit" : {
																					"days" : 7
																				}
																			});
														})
													}

													if (accountType != 1) {
														$(function() {
															$(
																	'#dateRangePicker')
																	.daterangepicker(
																			{
																				"dateLimit" : {
																					"days" : 30
																				}
																			});
														})
													}
												</script>
												<br> <br>
												<h3 class="ui header">Verify Details</h3>
												<div class="ui fitted divider"></div>
												<br>

												<div class="ui action input fluid">
													<div class="ui labeled input">
														<div class="ui label">From:</div>
														<input type="text" id="fromString" name="fromString" />
													</div>
												</div>
												<br>
												<div class="ui action input fluid">
													<div class="ui labeled input">
														<div class="ui label">To:</div>
														<input type="text" id="toString" name="toString" />
													</div>
												</div>
												<br>


												<button class="ui button green fluid" type="submit">
													<i class="book icon"></i> Borrow
												</button>


												<input type="text" name="materialID"
													value="${material.materialID}" />
											</form>

										</c:if>
									</c:if>


									<c:if test="${sessionScope.Username == null}">
										<div class="ui negative message">
											<i class="close icon"></i>
											<div class="header">User actions are restricted</div>
											<p>Please Login</p>
										</div>
									</c:if>

									<script>
										$("#borrow")
												.click(
														function() {
															document
																	.getElementById("fromString").value = $(
																	"#dateRangePicker")
																	.data(
																			'daterangepicker').startDate
																	.format('DD/MM/YYYY');
															;
															document
																	.getElementById("toString").value = $(
																	"#dateRangePicker")
																	.data(
																			'daterangepicker').endDate
																	.format('DD/MM/YYYY');
															;

														});
									</script>
								</div>
							</div>
						</div>
						<div class="ui twelve wide column">
							<div class="ui segment">
								<h3 class="ui header left aligned">
									<div class="content">
										Title
										<div class="sub header">
											<c:out value="${material.title}" />
										</div>
									</div>
								</h3>
							</div>
							<div class="ui segment">
								<h3 class="ui header left aligned">
									<div class="content">
										Author
										<div class="sub header">
											<c:out value="${material.author}" />
										</div>
									</div>
								</h3>
							</div>
							<div class="ui segment">
								<h3 class="ui header left aligned">
									<div class="content">
										Year
										<div class="sub header">
											<c:out value="${material.year}" />
										</div>
									</div>
								</h3>
							</div>
							<div class="ui segment">
								<h3 class="ui header left aligned">
									<div class="content">
										Location
										<div class="sub header">
											<c:out value="${material.location}" />
										</div>
									</div>
								</h3>
							</div>
							<div class="ui segment">
								<h3 class="ui header left aligned">
									<div class="content">
										Publisher
										<div class="sub header">
											<c:out value="${material.publisher}" />
										</div>
									</div>
								</h3>
							</div>
							<div class="ui segment">
								<h3 class="ui header left aligned">
									<div class="content">
										Status
										<div class="sub header">
											<c:out value="${material.status}" />
										</div>
									</div>
								</h3>
							</div>
							<div class="ui segment">
								<h3 class="ui header left aligned">
									<div class="content">
										Rating
										<div class="sub header">
											<c:out value="${material.rating}" />
										</div>
									</div>
								</h3>
							</div>
							<br>
							<div class="ui comments">
								<h3 class="ui dividing header">Comments</h3>

								<c:forEach var="c" items="${reviews}">
									<div class="comment">
										<a class="avatar"> <img src="images/avatar.jpg">
											<div class="content">
												<a class="author">${c.name}</a>
												<div class="metadata">
													<span class="date">${c.commentTime}</span>
												</div>
												<div class="text">${c.comment}!</div>
												<div class="actions">
													<a class="reply">Reply</a>
												</div>
											</div>
									</div>
								</c:forEach>

								<c:if test="${commentable == 1}">
									<form class="ui reply form" method="post"
										action="AddReviewServlet">
										<input type="text" name="materialID"
											value="${material.materialID}" />
										<div class="field">
											<textarea name = "comment"></textarea>
										</div>
										<div class="field">
											<label>Rating</label> <select
												class="ui search dropdown fluid" name="rating">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>

											</select>
										</div>

										<button class="ui button green fluid" type="submit">
											<i class="book icon"></i> Comment
										</button>
									</form>
								</c:if>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
</body>


</html>