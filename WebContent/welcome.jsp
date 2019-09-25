<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<STYLE>
	*{
	margin:0px;
	padding:0px;
}

.bgimage{
	background-image: url('d/tt.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
}

.menu{

	width: 100%;
	height: 100px;
	background-color: rgba(0,0,0,0.5);
}

.leftmenu{
	width: 25%;
	line-height: 100px;
	float: left;
/*	background-color: yellow;*/
}

.leftmenu h4{
	padding-left: 70px;
	font-weight: normal;
	color: white;
	font-size: 22px;
	font-family: 'Montserrat', sans-serif;
}

.rightmenu{
	width:70%;
	height: 100px;
	float: right;
/*	background-color: red; */
}

.rightmenu ul{
	margin-left: 200px;
}

.rightmenu ul li {
	font-family: 'Montserrat', sans-serif;
	display: inline-block;
	list-style: none;
	font-size: 15px;
	color:white;
	font-weight: bold;
	line-height: 100px;
	margin-left: 40px;
	text-transform: uppercase;

}

#fisrtlist{
	color: orange;
}

.rightmenu ul li:hover{
	color: orange;
}
.l:hover{	color: orange;}



.text{
	width: 100%;
	margin-top: 185px;
	text-transform: uppercase;
	text-align: center;
	color:white;
}
.lg{

background-color: rgba(0,0,0,0.5);

font-family: 'Montserrat', sans-serif;
	display: inline-block;
	list-style: none;
	font-size: 15px;
	color:white;
	font-weight: bold;
	
	margin-left: 40px;
	text-transform: uppercase;
	border-color: rgba(0,0,0,0.5);

}
.text h4{

	font-size: 14px;
	font-family: 'Open Sans', sans-serif;
}

.text h1{
	font-size:62px;
	font-family: 'Montserrat', sans-serif;
	font-weight: 700px;
	margin:14px 0px;
}

.text h3{
	font-size: 12px;
	font-family: 'Open Sans', sans-serif;
}


#buttonone{
	background-color: white;
	border: none;
	font-size: 12px;
	font-weight: bold;
	text-transform: uppercase;
	line-height: 40px;
	width: 150px;
	font-family: 'Montserrat', sans-serif;
	margin-top: 25px;
	border: 3px solid white;
}

#buttontwo{

	background-color: transparent;
	border: none;
	font-family: 'Montserrat', sans-serif;
	text-transform: uppercase;
	font-weight: bold;
	line-height: 40px;
	border: 3px solid white;	width: 150px;
}
	</STYLE>
		 <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>
		  <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
<meta charset="ISO-8859-1">
</head>
<body>
<div class="bgimage">
		<div class="menu">
			
			<div class="leftmenu">
				<h4> Welcome 
<%




response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
String user=session.getAttribute("user").toString();
if(user==null){
	response.sendRedirect("getdata");
}













try{


String url="jdbc:mysql://localhost:3306/website";

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,"root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from data where id='"+user+"'");
	

rs.next();
String g=rs.getString(7);
if(g.equals("male")){
	out.println("Mr.  ");
}
else if(g.equals("female")){
	out.println("Mrs .");
}
	
String name=rs.getString(1)+"  "+rs.getString(2);
out.println(name);
}
catch(Exception e){
	
	out.println(e);
}


%>


	
			
				 </h4>
			</div>

			<div class="rightmenu">
				<ul>
					<li id="fisrtlist"> HOME </li>
					<a href="https://www.github.com/sainivinit"><li> GitHub </li></a>
					<li> Works</li>
					<li> Aboust us</li>
					<li>contact</li>
				
					<a href="mailto:vinitsaini357@gmail.com"><li> Mail us </li></a>
					<li> <form action="logout"><input class="lg" type="submit" value="Logout"></form> </li>
					
				</ul>
			</div>

		</div>

		<div class="text">
			<h4> DESIGN • DEVELOPMENT • BRANDING </h4>
			<h1> CREATIVE & EXPERIENCED </h1>
			<h3> WE ARE THE ONE OF THE WORLD’S TOP CREATIVE DESIGN AGENCIES </h3>
			<a href="https://www.facebook.com/vinitsainilaksar">
				<button id="buttonone"> FACEBOOK </button>
			</a>
			<a href="https://www.instagram.com/saini_vinit">
				<button id="buttontwo"> INSTAGRAM </button> 
			</a>
			
			
		</div>

	</div>

</body>
</html>




