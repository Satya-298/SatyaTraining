<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Patient Medical History</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen p-10">

    <div class="max-w-5xl mx-auto bg-white p-8 rounded shadow-md">
        <h2 class="text-2xl font-semibold text-blue-800 mb-6">📋 Medical History by Patient ID</h2>

        <h:form styleClass="space-y-6">

            <!-- Input Row -->
            <div class="flex flex-wrap items-center gap-4">
                <h:outputLabel value="Enter Patient ID:" styleClass="text-gray-700 font-medium" />
                <h:inputText value="#{medicationHistoryController.patient.patientId}" 
                             styleClass="border border-gray-300 px-3 py-2 rounded" />
                <h:commandButton value="Search" action="#{medicationHistoryController.loadPatientMedicalHistory}" 
                                 styleClass="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700" />
                <h:commandButton value="📋 Menu" action="#{doctorController.goToMedicationDashboard}" 
                                 styleClass="bg-gray-600 text-white px-4 py-2 rounded hover:bg-gray-700" />
            </div>

            <!-- Data Table -->
            <h:dataTable value="#{medicationHistoryController.medicalHistoryList}" var="med"
                         rendered="#{not empty medicationHistoryController.medicalHistoryList}"
                         styleClass="min-w-full border border-gray-300 mt-8 rounded overflow-hidden">

                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Med ID" styleClass="font-semibold bg-gray-100 p-2 block" />
                    </f:facet>
                    <h:outputText value="#{med.medId}" styleClass="p-2 block" />
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Patient ID" styleClass="font-semibold bg-gray-100 p-2 block" />
                    </f:facet>
                    <h:outputText value="#{med.patient.patientId}" styleClass="p-2 block" />
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Medicines" styleClass="font-semibold bg-gray-100 p-2 block" />
                    </f:facet>
                    <h:outputText value="#{med.medicines}" styleClass="p-2 block" />
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Tests" styleClass="font-semibold bg-gray-100 p-2 block" />
                    </f:facet>
                    <h:outputText value="#{med.tests}" styleClass="p-2 block" />
                </h:column>
            </h:dataTable>

        </h:form>
    </div>

</body>
</html>
</f:view>
