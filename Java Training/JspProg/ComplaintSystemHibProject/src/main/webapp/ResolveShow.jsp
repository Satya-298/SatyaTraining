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
	<jsp:useBean id="resolveDao" class="com.jav.hib.dao.ResolveDaoImpl" />
    <jsp:useBean id="complaintDao" class="com.jav.hib.dao.ComplaintDaoImpl" />
    <c:set var="resolveList" value="${resolveDao.showResolveDao()}" />
    <c:set var="complaintId" value="${param.complaintId}" />
    <c:set var="complaint" value="${complaintDao.searchComplaintDao(param.complaintId)}" />
    <c:set var="resolveId" value="${param.resolveId}" />
<%--     <c:set var="resolveL" value="${resolveDao.searchResolveDao(param.resolveId)}" />
 --%>    
    <table border="3" align="center">
		<tr>
			<th>Resolve ID</th>
   			<th>Complaint ID</th>
   			<th>Complaint Date</th>
   			<th>Resolved Date</th>
   			<th>Resolved By</th>
   			<th>Comments</th>
		</tr>
		
	<c:forEach var="resolve" items="${resolveList}">
    	<tr>
     	   	<td>${resolve.resolveId}</td>
        	<td>${resolve.complaintId}</td>
        	<td>
        			<c:set var="complaintDate" value="${resolve.complaintDate}" />
	        		<!-- Format the timestamp into yyyy-MM-dd HH:mm:ss -->
	        		<c:set var="formatDate" value="${fn:substring(complaintDate, 0,10)}" />
	        		<c:out value="${formatDate}" />
        	</td>
        	<td>
	        		<c:set var="resolveDate" value="${resolve.resolveDate}" />
	        		<!-- Format the timestamp into yyyy-MM-dd HH:mm:ss -->
	        		<c:set var="formattedDate" value="${fn:substring(resolveDate, 0,19)}" />
	        		<c:out value="${formattedDate}" />
	        	</td>
        	<td>${resolve.resolvedBy}</td>
        	<td>${resolve.comments}</td>	
		</tr>
    </c:forEach>
</table>
<a href="ComplaintShow.jsp">Back to Complaints</a>
</body>
</html>