<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;  /* Centers horizontally */
  align-items: center;      /* Centers vertically */
  height: 100vh;            /* Full viewport height */
}

.form-container {
  width: 300px;
  padding: 20px;
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  text-align: center;
}

h2 {
  margin-bottom: 20px;
  color: #333;
}

input[type="text"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  margin: 10px 0;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type="submit"] {
  width: 100%;
  padding: 10px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #45a049;
}

.login-link {
  margin-top: 15px;
}

.login-link a {
  color: #007bff;
  text-decoration: none;
}

.login-link a:hover {
  text-decoration: underline;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="form-container">
	<center> 
	<form method = "post" action="AddAdmin.jsp" >
		Admin Name :
		<input type = "text" name="adminName" />
		Password : 
		<input type="password" name="passWord" /> <br/><br/>
		Re-Type Password : 
		<input type="password" name="retypePassCode" /> <br/><br/> 
		<input type="submit" value="Create Account" />
	</form>
	<div class="login-link">
            Already have an account? <a href="AdminLogin.jsp">Login here</a>
        </div>
	<%
		if (request.getParameter("adminName")!=null && 
			request.getParameter("passWord")!=null
				) {
			String pwd = request.getParameter("passWord");
			String reType = request.getParameter("retypePassCode");
			if (pwd.equals(reType)) {
	%>
	<jsp:useBean id="libAdmin" class="com.java.lib.model.LibAdmin" />
	<jsp:useBean id="libDao" class="com.java.lib.dao.LibraryDaoImpl" />
	<jsp:setProperty property="*" name="libAdmin"/>
	<%=libDao.createAdmin(libAdmin) %>
	<%
			}
		}
	%>
</center>
</div>
</body>
</html>