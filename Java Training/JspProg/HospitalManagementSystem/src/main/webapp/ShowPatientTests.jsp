<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Patient Tests</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen p-10">
    <div class="max-w-4xl mx-auto bg-white p-8 rounded shadow">
        <h2 class="text-2xl font-bold text-blue-800 mb-6">🧪 Show Tests by Patient ID</h2>

        <h:form styleClass="space-y-6">
            <div class="flex flex-wrap items-center gap-4">
                <h:outputLabel value="Enter Patient ID:" styleClass="text-gray-700 font-medium" />
                <h:inputText value="#{medicationHistoryController.patient.patientId}"
                             styleClass="border border-gray-300 px-3 py-2 rounded" />
                <h:commandButton value="Show Tests" action="#{medicationHistoryController.loadPatientTests}"
                                 styleClass="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700" />
                <h:commandButton value="📋 Menu" action="#{doctorController.goToMedicationDashboard}"
                                 styleClass="bg-gray-600 text-white px-4 py-2 rounded hover:bg-gray-700" />
            </div>

            <!-- DataTable -->
            <h:dataTable value="#{medicationHistoryController.patientTests}" var="test"
                         rendered="#{not empty medicationHistoryController.patientTests}"
                         styleClass="min-w-full mt-8 border border-gray-300 rounded overflow-hidden">

                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Test" styleClass="bg-gray-100 font-semibold p-2 block" />
                    </f:facet>
                    <h:outputText value="#{test}" styleClass="p-2 block" />
                </h:column>
            </h:dataTable>
        </h:form>
    </div>
</body>
</html>
</f:view>
