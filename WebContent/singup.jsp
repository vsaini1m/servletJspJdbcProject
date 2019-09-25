<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!-- --- -->


<!DOCTYPE html>
<html>
<head><meta charset="ISO-8859-1">
	<title></title>
<style type="text/css">
	
*{
	padding: 0px;
	margin: 0px;
}
.img{

width: 100%;
	height: 100vh;
	background-image: url('data/7.JPG');
	background-size: 100%,100%;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-color: cyan;
}
.br{
	width: 60%;
	height: 80%;
	position: absolute;
	left: 20%;
	top: 10%;
	background-color: rgba(0,0,0,0.5);
	border-radius: 5%;
}
.en input{
	width: 50%;
	height: 4%;
	position: absolute;
	
	left: 25%;
	border-radius: 15px;
	border-color: rgb(5,5,250);
	font-size: 16px;
	font-family: serif;
	font-style: italic;
color: rgb(250,0,100);
text-align: center;
}


.f{
top: 15%;
}

.l{
top: 25%;
}

.gn select{
width: 50%;
	height: 5%;
	position: absolute;
	top: 35%;
	left: 25%;
	border-radius: 15px;
	border-color: rgb(150,5,5);
	font-size: 16px;
	font-family: serif;
	font-style: italic;
color: rgb(250,0,100);
text-align: center;

}
.e{


top: 45%
}

.m{
top: 55%;

}


.i{

top: 65%;
}

.p{
top: 75%;
}

.sub{
	left:25%; 
	top: 90%;
	background-color: rgba(60,0,100);
}


</style>
</head>
<body>

<div class="img">
	<div class="br">
		<div class="en">
			<form action="singup">
<input class="f" type="text" placeholder="First name" required="" name="first"><br><br>
<input class="l" type="text" placeholder="Last name" required="" name="last">	<br><br>
<input class="e" type="text" placeholder="Email id" required="" name="email"><br><br>
<input class="m" type="text" placeholder="Mobile No." required="" name="mobile"><br><br>
<input class="i" type="text" placeholder="User Id" required="User id is required" name="id"><br><br>
<input class="p" type="text" placeholder="User Password" required="Password is required" name="password"><br><br>
				<p class="gn">
					<select name="Geneder" >
						<option value="0" selected disabled >Geneder</option>
						<option value="male">Male</option>
						<option value="female">Female</option>
						<option value="other">other</option>
					</select>
				</p>


				<input class="sub" type="submit" value="Sing UP">

			</form>

		</div>


	</div>


</div>
</body>
</html>