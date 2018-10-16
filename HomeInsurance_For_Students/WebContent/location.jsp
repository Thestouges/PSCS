<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Location</title>
<script type="text/javascript">
function validate(form)
{
	var locationForm = document.forms["location"];
	
	if(locationForm["addressLine1"].value == "")
	{
		alert("Please enter Address Line 1");
		return false;
	}
	if(!/^.{0,50}$/.test(locationForm["addressLine1"].value)){
		alert("Address Line 1 cannot exceed 50 characters")
		return false;
	}
	if(!/^.[a-zA-Z0-9 ,-/.]{0,50}$/.test(locationForm["addressLine1"].value)){
		alert("Address Line 1 can only contain alphanumeric characters and ,-/. characters");
		return false;
	}
	if(locationForm["addressLine2"].value == "")
	{
		alert("Please enter Address Line 2");
		return false;
	}
	if(!/^.{0,100}$/.test(locationForm["addressLine2"].value)){
		alert("Address Line 2 cannot exceed 100 characters")
		return false;
	}
	if(!/^.[a-zA-Z0-9 ,-/.]{0,100}$/.test(locationForm["addressLine2"].value)){
		alert("Address Line 2 can only contain alphanumeric characters and ,-/. characters");
		return false;
	}
	if(locationForm["city"].value == "")
	{
		alert("Please enter City");
		return false;
	}
	if(!/^.{0,15}$/.test(locationForm["city"].value)){
		alert("City cannot exceed 15 characters")
		return false;
	}
	if(!/^.[a-zA-Z0-9 ]{0,15}$/.test(locationForm["city"].value)){
		alert("City can only contain alphanumeric characters");
		return false;
	}
	if(locationForm["state"].value == "")
	{
		alert("Please enter State");
		return false;
	}
	if(!/^.{0,15}$/.test(locationForm["state"].value)){
		alert("State cannot exceed 15 characters")
		return false;
	}
	if(!/^.[a-zA-Z0-9 ]{0,15}$/.test(locationForm["state"].value)){
		alert("State can only contain alphanumeric characters");
		return false;
	}
	if(locationForm["zip"].value == "")
	{
		alert("Please enter Zip");
		return false;
	}
	if(!/^.{0,9}$/.test(locationForm["zip"].value)){
		alert("Zip must be less than 10 characters")
		return false;
	}
	if(!/^.[0-9]{0,10}$/.test(locationForm["zip"].value)){
		alert("Zip can only contain numeric characters");
		return false;
	}
	return true;
}
window.history.forward();     
function noBack() 
{ 
	window.history.forward();
}

</script>
</head>
<body onload="noBack();" onunload="">
	<%@include file="header.jsp"%>
	<hr/>
	<h1 align="left">Home Location</h1>
	<div align="right"><a href="logout.jsp">Logout</a></div>
	<form name="location" action="location" method="post">
	<div align="center" style="width:800px; margin:0 auto;">
	<table>
		<tr>
			<td>Residence Type</td>
			<td><select name="residenceType">
					<option value="Single-Family Home">Single-Family Home</option>
					<option value="Condo">Condo</option>
					<option value="Townhouse">Townhouse</option>
					<option value="Rowhouse">Rowhouse</option>
					<option value="Duplex">Duplex</option>
					<option value="Apartment">Apartment</option>
			</select></td>
		</tr>
		<tr>
			<td>Address Line 1</td>
			<td><input name="addressLine1" type="text"/>
			</td>
		</tr>
		<tr>
			<td>Address Line 2</td>
			<td><input name="addressLine2" type="text"/>
			</td>
		</tr>
		<tr>
			<td>City</td>
			<td><input name="city" type="text" />
			</td>
		</tr>
		<tr>
			<td>State</td>
			<td><input name="state" type="text" />
			</td>
		</tr>
		<tr>
			<td>Zip</td>
			<td><input name="zip" type="text" />
			</td>
		</tr>
		<tr>
			<td>Residence Use</td>
			<td><select name="residenceUse">
					<option value="Primary">Primary</option>
					<option value="Secondary">Secondary</option>
					<option value="Rental Property">Rental Property</option>
			</select></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" name="Submit" value="Continue" onclick="return validate(this);"/>
			</td>
		</tr>
	</table>
	</div>
	</form>
	<hr/>
	<script type="text/javascript">
		document.getElementById("loc").src="images/tick.jpg";
		document.getElementById("Location").className = "header1";
	</script>
</body>
</html>