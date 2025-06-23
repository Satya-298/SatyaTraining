<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<f:view>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Patient by ID</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-10 min-h-screen">

    <div class="max-w-4xl mx-auto bg-white p-6 rounded-md shadow-md">
        <h2 class="text-2xl font-semibold text-blue-800 mb-6">🔍 Search Patient by ID</h2>

        <h:form styleClass="space-y-4">
            <div class="flex items-center gap-4">
                <h:outputLabel value="Enter Patient ID: " for="pid" styleClass="text-gray-700 font-medium" />
                <h:inputText id="pid" value="#{patientController.patient.patientId}" 
                             styleClass="border border-gray-300 rounded px-3 py-2 w-1/3" />

                <h:commandButton value="Search" action="#{patientController.searchPatientById}" 
                                 styleClass="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700" />

                <h:commandButton value="📋 Menu" action="#{doctorController.goToPatientDashboard}" 
                                 styleClass="bg-gray-600 text-white px-4 py-2 rounded hover:bg-gray-700" />
            </div>

            <!-- Results -->
            <h:panelGrid columns="2" rendered="#{not empty patientController.patient.patientName}" 
                         styleClass="mt-6 border border-gray-300 rounded-lg p-4 w-full bg-gray-50 gap-4 text-gray-800">
                <h:outputLabel value="Patient ID:" />
                <h:outputText value="#{patientController.patient.patientId}" />

                <h:outputLabel value="Patient Name:" />
                <h:outputText value="#{patientController.patient.patientName}" />

                <h:outputLabel value="Doctor ID:" />
                <h:outputText value="#{patientController.patient.doctor.doctorId}" />

                <h:outputLabel value="Date of Birth:" />
                <h:outputText value="#{patientController.patient.dateOfBirth}" />
            </h:panelGrid>
        </h:form>
    </div>
</body>
</html>
</f:view>
