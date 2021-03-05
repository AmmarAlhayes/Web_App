<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<link rel="stylesheet" href="Web.css">
</head>
<body>
	<div class="header">
		<ul class="headlist">
			<p>Easy Shop</p>
			<li class="headitemlist"><a href="Web.jsp" class="amenu">Home</a></li>
			<li class="headitemlist"><a href="contact-us.jsp" class="amenu">Contact
					us</a></li>
			<li class="headitemlist"><a href="About.html" class="amenu">About</a></li>
		</ul>
	</div>
	<nav>
		<ul class="navlist">
			<li class="navitemlist"><a a href="" class="navmenu" a>Smartphones</a></li>
			<li class="navitemlist"><a a href="" class="navmenu" a>Laptops</a></li>
			<li class="navitemlist"><a a href="" class="navmenu" a>Computers</a></li>
			<li class="navitemlist"><a a href="" class="navmenu" a>tablets
					& tv</a></li>
			<li class="navitemlist"><a a href="" class="navmenu" a>elektronik</a></li>
			<li class="navitemlist"><a a href="" class="navmenu" a>jacken</a></li>
			<li class="navitemlist"><a a href="" class="navmenu" a>sport</a></li>
			<li class="navitemlist"><a a href="" class="navmenu" a>Küche,Haushalt
					& whonen</a></li>
		</ul>
	</nav>
	<section class="form">
		<div><h2>Contact Us</h2></div>
		<form action="WebApp" method="POST">
			<fieldset class="field">
				<label>Email</label>
				<input type="email" name="email">
				<label>name</label>
				<input type="text" name="name">
				<label>Message</label>
				<textarea name="message"></textarea>
				<input type="submit" value="Submit">
			</fieldset>
		</form>
	</section>
	<footer>
		<p>All rights reserved &copy; 2021 Ammar Alhayes</p>
	</footer>
</body>
</html>