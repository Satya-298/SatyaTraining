<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method = "post" action="Login.jsp" >
		<center>
			User Name :
			<input type="text" name="userName" /> <br/><br/>
			Password :
			<input type="password" name="passCode" /> <br/><br/>
			<input type="submit" value="Show" />
		</center>
	</form>
	
	<%
		if (request.getParameter("userName") != null 
		&& request.getParameter("passCode") != null) {
			String user = request.getParameter("userName");
			String pwd = request.getParameter("passCode");
			if (user.equals("Infinite") && pwd.equals("Infinite")) {
	%>
		<jsp:forward page="Menu.jsp" />
	<%	
			} else {
				out.println("***Invalid Credentials***");
			}
		}
	%>
</body>
</html>