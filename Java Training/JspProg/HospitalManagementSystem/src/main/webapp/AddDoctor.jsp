<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Doctor</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">

    <div class="bg-white shadow-md rounded-lg p-10 w-full max-w-lg">
        <h2 class="text-2xl font-bold text-blue-700 mb-6 text-center">➕ Add Doctor</h2>
        
        <h:form>
            <div class="mb-4">
                <label for="doctorId" class="block text-gray-700 font-medium">Doctor ID</label>
                <h:inputText id="doctorId" value="#{doctorController.doctor.doctorId}" styleClass="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-400"/>
            </div>

            <div class="mb-4">
                <label for="doctorName" class="block text-gray-700 font-medium">Doctor Name</label>
                <h:inputText id="doctorName" value="#{doctorController.doctor.doctorName}" styleClass="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-400"/>
            </div>

            <div class="mb-4">
                <label for="specialization" class="block text-gray-700 font-medium">Specialization</label>
                <h:selectOneMenu id="specialization" value="#{doctorController.doctor.specialization}" styleClass="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md">
                    <f:selectItem itemLabel="-- Select --" itemValue="" />
                    <f:selectItem itemLabel="HEART" itemValue="HEART" />
                    <f:selectItem itemLabel="SKIN" itemValue="SKIN" />
                    <f:selectItem itemLabel="GENERAL" itemValue="GENERAL" />
                    <f:selectItem itemLabel="KIDNEY" itemValue="KIDNEY" />
                </h:selectOneMenu>
            </div>

            <div class="mb-4">
                <label for="location" class="block text-gray-700 font-medium">Location</label>
                <h:inputText id="location" value="#{doctorController.doctor.location}" styleClass="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md"/>
            </div>

            <div class="mb-4">
                <label for="mobileNo" class="block text-gray-700 font-medium">Mobile No</label>
                <h:inputText id="mobileNo" value="#{doctorController.doctor.mobileNo}" styleClass="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md"/>
            </div>

            <div class="mb-6">
                <label for="isStatus" class="block text-gray-700 font-medium">Status</label>
                <h:selectOneMenu id="isStatus" value="#{doctorController.doctor.isStatus}" styleClass="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md">
                    <f:selectItem itemLabel="ACTIVE" itemValue="ACTIVE" />
                    <f:selectItem itemLabel="INACTIVE" itemValue="INACTIVE" />
                </h:selectOneMenu>
            </div>

            <!-- Buttons -->
            <div class="flex justify-between">
                <h:commandButton value="✅ Add Doctor" action="#{doctorController.addDoctor}" styleClass="bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-md"/>
                <h:commandButton value="🏠 Menu" action="#{doctorController.goToDashboard}" styleClass="bg-gray-500 hover:bg-gray-600 text-white font-bold py-2 px-4 rounded-md"/>
            </div>

            <!-- Success Message -->
            <h:panelGroup rendered="#{not empty doctorController.message}">
                <div class="mt-4 text-green-600 font-semibold text-center">
                    <h:outputText value="#{doctorController.message}" />
                </div>
            </h:panelGroup>
        </h:form>
    </div>

</body>
</html>
</f:view>
