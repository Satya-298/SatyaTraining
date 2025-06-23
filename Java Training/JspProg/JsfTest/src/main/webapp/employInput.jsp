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
	<h1>Employ Form</h1>
		<h:form>	
				Employ No :
		
			<h:inputText label="Employ No" id="empno" value="#{employ.empno}">
				<f:validateLongRange minimum="1" maximum="100" />
			</h:inputText> <br/><br/>
			<h:message for="empno" style="color:red" />
				Employ Name :
				
			<h:inputText label="Employ Name" id="name" value="#{employ.name}">
				<f:validateLength minimum="1" maximum="10" />
			</h:inputText>	<br/><br/>
			<h:message for="name" style="color:red" />
				Employ Dept :
			<h:selectOneMenu label="Employ Dept" id="dept" value="#{employ.dept}" required="true" >
				<f:selectItem itemValue="Java" itemLabel="Java"/>
				<f:selectItem itemValue="Dotnet" itemLabel="Dotnet"/>
				<f:selectItem itemValue="Angular" itemLabel="Angular"/>
			</h:selectOneMenu> <br/><br/>
			<h:message for="dept" style="color:red" />
				Designation : 
			<h:selectOneMenu id="desig" value="#{employ.desig}"
				 required="true" label="Designation">
   				<f:selectItem itemValue="Programmer" itemLabel="Programmer" />
   				<f:selectItem itemValue="Manager" itemLabel="Manager" />
   				<f:selectItem itemValue="TeamLead" itemLabel="Team Lead" />
			</h:selectOneMenu> <br/><br/>
			<h:message for="desig" style="color:red" />
        		Basic : 
        	<h:inputText id="basic" value="#{employ.basic}" required="true" label="Basic">
        		<f:validateDoubleRange minimum="1000.0" maximum="50000.00" />
        	</h:inputText>
          	<h:message for="basic" style="color:red" />
          	<h:commandButton value="Show" action="employShow"/>
		</h:form>
	
	
</body>
</html>
</f:view>