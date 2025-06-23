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
	<h:form prependId="false">
		<h:panelGrid columns="2">
			<h:outputLabel for="email" value="Email:" />
			<h:inputText id="email" value="#{userBean.email}" required="true" />
			<h:message for="email" style="color:red" />
			
			<h:commandButton value="Register" action="#{userBean.register}" />
		</h:panelGrid>
		<!-- Show all messages just in case -->
		<h:messages showDetail="true" showSummary="true" style="color:blue" />
	</h:form>
</body>
</html>
</f:view>