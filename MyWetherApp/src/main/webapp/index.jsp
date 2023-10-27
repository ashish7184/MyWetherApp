<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="icon" href="https://th.bing.com/th/id/OIP.Tpq1Qq_Gt_bJmrbRwrA33QHaG1?pid=ImgDet&rs=1">
<title>Insert title here</title>
<style type="text/css">
body {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	margin: 0;
	background-color: blue;
}

.weather-container {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	text-align: center;
	padding: 20px;
	flex-direction: row;
	align-items: center;
}

.weather-icon {
	display: flex;
}

.weather-icon img {
	max-width: 200px;
	padding: 30px;
}

.weather-info {
	text-align: left;
	margin-left: 20px;
	text-align: center;
}

.weather-info h1 {
	font-size: 24px;
	margin: 0;
}

.temperature, .description {
	font-size: 18px;
}

.weather-data {
	display: flex;
}

.weather-data p {
	margin-left: 20px;
	font-weight: bold;
}
.first{
  display: flex;
}
.Second{
display: flex;
margin-left: 20px;
}
input{
height: 40px;
		width: 250px;
		border-radius: 30px;
		padding-left:30px ;
		font-weight: bold;
}
button {
	width:45px;
		height: 45px;
		border-radius: 50%;
		font-weight:bold;
}
</style>
</head>
<body bgcolor="blue">
	<div class="weather-container">
		<div class="int">
			<form action="MyServlet" method="post">
				<input type="text" placeholder="Please Enter your city" name="city" />
				<button>
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
			</form>
		</div>
		<div class="weather-icon">
			<img alt="Clauds"
					src="" id="weather-icon"
					style="width: 400px; height: 200px;">
			<p class="temperature">${temparature}
				<sup>0</sup>C
			</p>
		</div>
		<div class="weather-info">
			<h1>${city}</h1>
			<h3>${date}</h3>
		</div>
		<div class="weather-data">
			<div class="first">
				<img alt="Clauds"
					src="https://thumbs.dreamstime.com/b/humidity-icon-flat-color-design-vector-illustration-humidity-icon-238106198.jpg"
					style="width: 100px; height: 100px;">
				<div>
					<p class="description">Humidity</p>
					<p>${humidity}%</p>
					<input type="hidden" id="wc" value="${WeatherCond}"></input>
				</div>
			</div>
			<div class="Second">
				<img alt=""
					src="https://www.svgrepo.com/show/61395/wind-sign.svg"
					style="width: 60px; height: 100px;">
				<div>
					<p class="description">WindSpeed</p>
					<p>${windSpeed}km/h</p>
				</div>
			</div>
			
		</div>
	</div>
	<script src="script.js"></script>
</body>
</html>