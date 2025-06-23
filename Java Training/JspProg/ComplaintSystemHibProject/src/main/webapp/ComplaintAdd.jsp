<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Raise Complaint</title>
</head>
<body>
	<jsp:useBean id="complaintDao" class="com.jav.hib.dao.ComplaintDaoImpl" />
	<c:set var="autoId" value="${complaintDao.getGeneratedId()}" />
	<c:set var="currentTimestamp" value="${complaintDao.getCurrentTimestamp()}" />
	<jsp:useBean id="complaint" class="com.java.hib.model.Complaint" />
	<jsp:setProperty name="complaint" property="*" />
		
	
	<form method="post" action="ComplaintAdd.jsp">
    <center>
        Complaint Id :
        <input type="text" name="complaintId" value="${autoId}" readonly /> <br/><br/>
        
        Type :
		<select name="complaintType">
    		<option value="Technical" ${complaint.complaintType}>Technical</option>
    		<option value="Billing" ${complaint.complaintType}>Billing</option>
    		<option value="Service" ${complaint.complaintType}>Service</option>
		</select>
			<br/><br/>
        
        Description:
        <input type="text" name="cDescription" value="${complaint.cDescription}" /> <br/><br/>
        
        Date :
        <input type="text" value="${currentTimestamp}" readonly /> <br/><br/>  <!-- Just display -->
        
        Severity :
        <input type="text" name="severity" value="${complaint.severity}" /> <br/><br/>
        
        Status :
        <input type="text" name="status" value="Pending" readonly /> <br/><br/>
        
        <input type="submit" value="Raise Complaint" />
    </center>
</form>
	<c:if test="${param.complaintType != null 
				&& param.cDescription != null 
				&& param.severity != null}">
    <c:out value="${complaintDao.addComplaintDao(complaint)}" />
    <jsp:forward page="ComplaintShow.jsp" />
</c:if>
</body>
</html>