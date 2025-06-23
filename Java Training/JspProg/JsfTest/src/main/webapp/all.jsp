<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%> 
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<f:view>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h:form id="form">
				User Name
		<h:inputText id="username" value="#{all.username}" required="true"> 
			<f:validateLength minimum="1" maximum="10" />
		</h:inputText> <br/> <br/>
		<h:message for="username" style="color:red" />
		
				Email
		<h:inputText id="email" value="#{all.email}" required="true" >
			<f:validateLength minimum="13" maximum="20" />
		</h:inputText> <br/> <br/>
		<h:message for="email" style="color:red" />
		
				Age
		<h:inputText id="age" value="#{all.age}" required = "true">
			<f:validateLongRange minimum="18" maximum="60" />
		</h:inputText>
		<h:message for="age" style="color:red" />
		 <br/> <br/>
		 
				Password
		<h:inputSecret id="password" value="#{all.password}" required="true" /> 
		
		<h:message for="password" style="color:red" />
		 <br/> <br/>
		 
				Confirm Password
		<h:inputSecret id="confirmPassword" value="#{all.confirmPassword}" required="true" /> <br/><br/>
		
		<h:message for="confirmPassword" style="color:red"/>
		<h:commandButton value="Register" action="#{all.submit}" />
		 
		
	</h:form>
</body>
</html>
</f:view>