<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search Doctor by ID</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-10 min-h-screen">

    <div class="max-w-4xl mx-auto bg-white p-6 rounded-md shadow-md">
        <h2 class="text-2xl font-semibold text-blue-800 mb-6">🔍 Search Doctor by ID</h2>

        <h:form styleClass="mb-8">
            <div class="flex flex-wrap items-center gap-4">
                <h:outputLabel value="Enter Doctor ID:" styleClass="text-gray-700 font-medium" />
                <h:inputText value="#{doctorController.doctor.doctorId}" label="Doctor ID" 
                             styleClass="border rounded px-3 py-2 w-1/3" />

                <h:commandButton value="Search Doctor" action="#{doctorController.searchedDoctorById()}"
                                 styleClass="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700" />

                <h:commandButton value="📋 Menu" action="#{doctorController.goToDashboard}"
                                 styleClass="bg-gray-600 text-white px-4 py-2 rounded hover:bg-gray-700" />
            </div>
        </h:form>

        <!-- Doctor Details -->
        <div class="grid grid-cols-2 gap-4 mt-6">
            <div class="font-semibold">Doctor ID:</div>
            <div><h:outputText value="#{doctorController.doctor.doctorId}" /></div>

            <div class="font-semibold">Doctor Name:</div>
            <div><h:outputText value="#{doctorController.doctor.doctorName}" /></div>

            <div class="font-semibold">Specialization:</div>
            <div><h:outputText value="#{doctorController.doctor.specialization}" /></div>

            <div class="font-semibold">Location:</div>
            <div><h:outputText value="#{doctorController.doctor.location}" /></div>

            <div class="font-semibold">Mobile No:</div>
            <div><h:outputText value="#{doctorController.doctor.mobileNo}" /></div>

            <div class="font-semibold">Status:</div>
            <div><h:outputText value="#{doctorController.doctor.isStatus}" /></div>
        </div>
    </div>

</body>
</html>
</f:view>
