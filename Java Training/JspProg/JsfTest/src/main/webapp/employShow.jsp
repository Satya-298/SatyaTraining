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
	<h:form>
				Employ No :
	<h:outputText value="#{employ.empno}"/><br/>
				Employ Name : 
	<h:outputText value="#{employ.name}"/> <br/>
				Department : 
	<h:outputText value="#{employ.dept}"/> <br/>
				Designation : 
	<h:outputText value="#{employ.desig}"/> <br/>
					Basic : 
	<h:outputText value="#{employ.basic}"/>
	
    </h:form>
</body>
</html>
</f:view>