<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Menu.jsp" />
	<form action="SearchPrint.jsp" >
		Select Search Criteria :
		<br/><br/>
		<input type="radio" name="searchtype" value="id" >By Book Id<br/>
		<input type="radio" name="searchtype" value="dept" >By Department<br/>
		<input type="radio" name="searchtype" value="bookname" >By Book Name<br/>
		<input type="radio" name="searchtype" value="authorname" >By Author Name<br/>
		<input type="radio" name="searchtype" value="all" >All Books<br/>
		<br/>
		Insert Search Value : <input type="text" name="searchvalue" size='10' >
		<br/><br/>
		<input type='submit' value='Search' >
	</form>

</body>
</html>