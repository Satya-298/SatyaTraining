<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%> 
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<f:view>
<body>

	<h:form>
	Calculation Program <br/>
	First No :
	<h:inputText id="firstNo" value="#{calculation.firstNo}" /> <br/>
	Last Name :
	<h:inputText id="secondNo" value="#{calculation.secondNo}" /> <br/>
	Full Name :
	<h:outputText value="#{calculation.result}" /> <br/>
	<h:commandButton actionListener = "#{calculation.Addition}"
		value = "Add" />
	</h:form>
</body>
</f:view>
</html>