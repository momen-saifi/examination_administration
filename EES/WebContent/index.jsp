<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Examination Administration</title>
<Style>
body{
height:50%;
width:100%;
background-image:url('na.jpg');
background-repeat: no-repeat;
}

.panal{
background-color:#000a1a;
color:white;
height:70%;
width:30%;
float:right;
margin:8%;
text-align:center;
padding-top:5%;
padding-bottom:15%;
border-radius:30px;
opacity:0.6;
float:left;
}
.font{
 color:#d1e0e0;
}
.text {	
  border: none;
  background: #000;
  color: #cce6ff;
  height:25px;
  padding: 5px;
  z-index: 100;
  font-family: 'Roboto', sans-serif;
  border-radius:15px;

  transition: all 600ms cubic-bezier(0.895, 0.03, 0.685, 0.22);
  

}
.text:focus {
  outline-width: 0;
  font-size: 16px;
}

.pass {
  border-radius:15px;
  border: none;
  background: #000;
  color: #cce6ff;
 
  height: 25px;
  padding: 5px;
  z-index: 100;
  font-family: 'Roboto', sans-serif;
 
  transition: all 600ms cubic-bezier(0.895, 0.03, 0.685, 0.22);
  
}
.pass:focus {
  outline-width: 0;
  font-size: 16px;
}

button {
 
  z-index: 100;
 padding:5px;
  
  border: 1px solid #fff;
  background: #000;
  font-family: 'Roboto', sans-serif;
  color: #fff;
  font-size: 16px;
  border-radius: 22px;
  transition: 0.5s;
  cursor: pointer;
}
button:hover {
  color: #000;
  background: #cce6ff;
}
.text:hover {
  color: #000;
  background: #cce6ff;
}
.pass:hover {
  color: #000;
  background: #cce6ff;
}
button:focus {
  outline-width: 0;
}
input,button{
width:90%;

margin:auto;
margin-top:10px;
}
</style>
</head>
<body>
<div class="background">
<div class="panal">
<h1 class="font">Admin Area</h1>
 <a href=AdminLogin.jsp><button type="submit">Click Here </button></a>
</form>

</div>

<div class="panal">
<h1 class="font">Student Area</h1>

 <a href=StudentLogin.jsp><button type="submit">Click Here </button></a>


</div>

</div>

</body>
</html> 
