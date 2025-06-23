<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Patients by Doctor ID</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-10 min-h-screen">

    <div class="max-w-5xl mx-auto bg-white p-6 rounded-md shadow-md">
        <h2 class="text-2xl font-semibold text-blue-800 mb-6">🔍 Search Patients by Doctor ID</h2>

        <h:form styleClass="space-y-4">
            <div class="flex flex-wrap items-center gap-4 mb-6">
                <h:outputLabel value="Enter Doctor ID: " for="docid" styleClass="text-gray-700 font-medium" />
                <h:inputText id="docid" value="#{patientController.doctor.doctorId}"
                             styleClass="border border-gray-300 rounded px-3 py-2 w-1/3" />

                <h:commandButton value="Search" action="#{patientController.searchPatientsByDoctorId}"
                                 styleClass="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700" />

                <h:commandButton value="📋 Menu" action="#{doctorController.goToPatientDashboard}"
                                 styleClass="bg-gray-600 text-white px-4 py-2 rounded hover:bg-gray-700" />
            </div>

            <!-- Results Table -->
            <h:dataTable value="#{patientController.patientsByDoctor}" var="patient" rendered="#{not empty patientController.patientsByDoctor}"
                         styleClass="min-w-full border border-gray-300 rounded overflow-hidden bg-white text-left text-gray-800">
                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Patient ID" styleClass="bg-gray-200 px-4 py-2 font-semibold" />
                    </f:facet>
                    <h:outputText value="#{patient.patientId}" styleClass="px-4 py-2 block" />
                </h:column>
                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Patient Name" styleClass="bg-gray-200 px-4 py-2 font-semibold" />
                    </f:facet>
                    <h:outputText value="#{patient.patientName}" styleClass="px-4 py-2 block" />
                </h:column>
                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Date of Birth" styleClass="bg-gray-200 px-4 py-2 font-semibold" />
                    </f:facet>
                    <h:outputText value="#{patient.dateOfBirth}" styleClass="px-4 py-2 block" />
                </h:column>
            </h:dataTable>
        </h:form>
    </div>

</body>
</html>
</f:view>
