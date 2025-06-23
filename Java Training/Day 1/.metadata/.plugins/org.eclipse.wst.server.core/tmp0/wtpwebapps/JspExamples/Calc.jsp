<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="Calc.jsp" >
		<center>
			First Number :
			<input type="number" name="firstNo" /> <br/><br/>
			Second Number :
			<input type="number" name="secondNo" /> <br/><br/>
			<input type="submit" value="Show" />
		</center>
	</form>
	
	<%
		if(request.getParameter("firstNo") != null 
		&& request.getParameter("secondNo") != null) {
			
			int firstNo, secondNo, result;
			firstNo = Integer.parseInt(request.getParameter("firstNo"));
			secondNo = Integer.parseInt(request.getParameter("secondNo"));
			result = firstNo + secondNo;
			out.println("Sum is <b>" +result+ "</b><br/>");
			result = firstNo - secondNo;
			out.println("Subtract is <b>" +result+ "</b><br/>");
			result = firstNo * secondNo;
			out.println("Mult is <b>" +result+ "</b>");
			
		}
	
	%>

</body>
</html>