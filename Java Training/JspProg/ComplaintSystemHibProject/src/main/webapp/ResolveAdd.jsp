<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="complaintId" value="${param.complaintId}" />
	<jsp:useBean id="resolveDao" class="com.jav.hib.dao.ResolveDaoImpl" />
	<jsp:useBean id="complaintDao" class="com.jav.hib.dao.ComplaintDaoImpl" />
	<c:set var="complaint" value="${complaintDao.searchComplaintDao(param.complaintId)}" />
	<c:set var="autoId" value="${resolveDao.getGeneratedResolveId()}" />
	<c:set var="currentTimestamp" value="${resolveDao.getCurrentTimestamp()}" />
	<jsp:useBean id="resolve" class="com.java.hib.model.Resolve" />
	<jsp:setProperty name="resolve" property="resolvedBy" />
	<jsp:setProperty property="comments" name="resolve"/>

		
	
	<form method="get" action="ResolveAdd.jsp">
    <center>
        Resolve Id :
        <input type="text" name="resolveId" value="${autoId}" readonly /> <br/><br/>
        
        Complaint Id :
        <input type="text" name="complaintId" value="${complaint.complaintId}" readonly /> <br/><br/>
        
        Complaint Date :
        <input type="text" value="${fn:substring(complaint.complaintDate, 0, 19)}" readonly /> <br/><br/>  <!-- Just display -->
        
        Resolve Date :
        <input type="text" value="${currentTimestamp}" readonly /> <br/><br/>  <!-- Just display -->
        
        Resolved By :
        <input type="text" name="resolvedBy" value="${resolve.resolvedBy}" /> <br/><br/>
        
        Comments :
        <input type="text" name="comments" value="${resolve.comments }" /> <br/><br/>
        
        <input type="submit" value="Resolve Complaint" />
    </center>
</form>
	<c:if test="${param.resolvedBy != null 
				&& param.comments != null}">
    <c:out value="${resolveDao.addResolveDao(resolve)}" />
	<c:redirect url="ResolveShow.jsp" >
		<c:param name="complaintId" value="${param.complaintId}" />
		<c:param name="resolveId" value="${resolve.resolveId}" />
	</c:redirect>
</c:if>
</body>
</html>