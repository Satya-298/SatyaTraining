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
	<jsp:useBean id="complaintDao" class="com.jav.hib.dao.ComplaintDaoImpl" />
	<c:set var="complaintList" value="${complaintDao.showComplaintDao()}" />
	<table border="3" align="center">
		<tr>
   			<th>Complaint ID</th>
   			<th>Complaint Type</th>
   			<th>Description</th>
   			<th>Complaint Date</th>
   			<th>Severity</th>
   			<th>Status</th>
   			<th>Resolve</th>
		</tr>
		
	<c:forEach var="complaint" items="${complaintList}">
    	<tr>
     	   	<td>${complaint.complaintId}</td>
        	<td>${complaint.complaintType}</td>
        	<td>${complaint.cDescription}</td>
        	<td>
	        		<c:set var="complaintDate" value="${complaint.complaintDate}" />
	        		<!-- Format the timestamp into yyyy-MM-dd HH:mm:ss -->
	        		<c:set var="formattedDate" value="${fn:substring(complaintDate, 0,19)}" />
	        		<c:out value="${formattedDate}" />
	        	</td>
        	<td>${complaint.severity}</td>
        	<td>${complaint.status}</td>
			<td><a href=ResolveAdd.jsp?complaintId=${complaint.complaintId}&complaintDate=${complaint.complaintDate}>Resolve</a></td>    	
		</tr>
    </c:forEach>
</table>
	<a href="ComplaintAdd.jsp">Raise Complaint</a>
	<a href="ComplaintSearch.jsp">Search Complaint</a>
</body>
</html>