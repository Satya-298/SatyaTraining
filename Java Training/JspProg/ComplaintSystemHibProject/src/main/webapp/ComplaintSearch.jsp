<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Complaint</title>
</head>
<body>
    <jsp:useBean id="complaintDao" class="com.jav.hib.dao.ComplaintDaoImpl" />

    <!-- Search form -->
    <form method="post" action="ComplaintSearch.jsp">
        <center>
            <label for="complaintId">Enter Complaint ID to Search:</label>
            <input type="text" id="complaintId" name="complaintId" required /> <br/><br/>
            
            <!-- Show error only if form submitted and no result -->
            <c:if test="${not empty param.complaintId}">
                <c:set var="complaint" value="${complaintDao.searchComplaintDao(param.complaintId)}" />
                <c:if test="${empty complaint}">
                    <div style="color:red;">ID not found</div>
                </c:if>
            </c:if>

            <br/>
            <input type="submit" value="Search" />
        </center>
    </form>

    <!-- Show complaint details if found -->
    <c:if test="${not empty complaint}">
        <center>
            <h3>Complaint Details</h3>
            <table border="1" cellspacing="0" cellpadding="5">
                <tr>
                    <th>Complaint ID</th>
                    <th>Complaint Type</th>
                    <th>Description</th>
                    <th>Complaint Date</th>
                    <th>Severity</th>
                    <th>Status</th>
                </tr>
                <tr>
                    <td>${complaint.complaintId}</td>
                    <td>${complaint.complaintType}</td>
                    <td>${complaint.cDescription}</td>
                    <td>${complaint.complaintDate}</td>
                    <td>${complaint.severity}</td>
                    <td>${complaint.status}</td>
                </tr>
            </table>
        </center>
    </c:if>
</body>
</html>
