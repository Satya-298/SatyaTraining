<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Medication History</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen p-10">
    <div class="max-w-xl mx-auto bg-white p-8 rounded shadow-md">
        <h2 class="text-2xl font-semibold text-blue-800 mb-6">➕ Add Medication History</h2>

        <h:form styleClass="space-y-5">

            <!-- Medication ID -->
            <div class="flex flex-col">
                <h:outputLabel value="Medication ID:" for="medId" styleClass="mb-1 text-gray-700 font-medium" />
                <h:inputText id="medId" value="#{medicationHistoryController.medicationHistory.medId}"
                             styleClass="border border-gray-300 px-3 py-2 rounded" />
            </div>

            <!-- Patient ID -->
            <div class="flex flex-col">
                <h:outputLabel value="Patient ID:" for="patientId" styleClass="mb-1 text-gray-700 font-medium" />
                <h:inputText id="patientId" value="#{medicationHistoryController.patient.patientId}"
                             styleClass="border border-gray-300 px-3 py-2 rounded" />
            </div>

            <!-- Medicines -->
            <div class="flex flex-col">
                <h:outputLabel value="Medicines:" for="medicines" styleClass="mb-1 text-gray-700 font-medium" />
                <h:inputText id="medicines" value="#{medicationHistoryController.medicationHistory.medicines}"
                             styleClass="border border-gray-300 px-3 py-2 rounded" />
            </div>

            <!-- Tests -->
            <div class="flex flex-col">
                <h:outputLabel value="Tests:" for="tests" styleClass="mb-1 text-gray-700 font-medium" />
                <h:inputText id="tests" value="#{medicationHistoryController.medicationHistory.tests}"
                             styleClass="border border-gray-300 px-3 py-2 rounded" />
            </div>

            <!-- Buttons -->
            <div class="flex gap-4">
                <h:commandButton value="Add Medication History" action="#{medicationHistoryController.addMedicalHistory}"
                                 styleClass="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700" />
                <h:commandButton value="📋 Menu" action="#{doctorController.goToMedicationDashboard}"
                                 styleClass="bg-gray-600 text-white px-4 py-2 rounded hover:bg-gray-700" />
            </div>

            <!-- Message Panel -->
            <h:panelGroup rendered="#{not empty medicationHistoryController.message}">
                <h:outputText value="#{medicationHistoryController.message}" styleClass="text-green-600 font-medium mt-4 block" />
            </h:panelGroup>

        </h:form>
    </div>
</body>
</html>
</f:view>
