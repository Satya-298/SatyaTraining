<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctors by Category</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-10 min-h-screen">

    <div class="max-w-6xl mx-auto bg-white p-6 rounded-md shadow-md">
        <h2 class="text-2xl font-semibold text-blue-800 mb-6">🔍 Search Doctors by Specialization</h2>

        <h:form styleClass="mb-8">
            <div class="flex flex-wrap items-center gap-4">
                <h:outputLabel value="Specialization:" styleClass="text-gray-700 font-medium" />
                <h:selectOneMenu value="#{doctorController.selectedspecialization}" styleClass="border rounded px-3 py-2">
                    <f:selectItem itemLabel="HEART" itemValue="HEART" />
                    <f:selectItem itemLabel="SKIN" itemValue="SKIN" />
                    <f:selectItem itemLabel="GENERAL" itemValue="GENERAL" />
                    <f:selectItem itemLabel="KIDNEY" itemValue="KIDNEY" />
                </h:selectOneMenu>

                <h:commandButton value="Show Doctors" action="#{doctorController.searchByCategory()}"
                                 styleClass="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700" />

                <h:commandButton value="📋 Menu" action="#{doctorController.goToDashboard}"
                                 styleClass="bg-gray-600 text-white px-4 py-2 rounded hover:bg-gray-700" />
            </div>
        </h:form>

        <!-- Results Table -->
        <div class="overflow-x-auto">
            <h:dataTable value="#{doctorController.filteredDoctors}" var="d"
                         styleClass="min-w-full bg-white border border-gray-300 rounded-lg overflow-hidden">
                <h:column>
                    <f:facet name="header"><h:outputText value="Doctor ID" /></f:facet>
                    <h:outputText value="#{d.doctorId}" />
                </h:column>
                <h:column>
                    <f:facet name="header"><h:outputText value="Doctor Name" /></f:facet>
                    <h:outputText value="#{d.doctorName}" />
                </h:column>
                <h:column>
                    <f:facet name="header"><h:outputText value="Specialization" /></f:facet>
                    <h:outputText value="#{d.specialization}" />
                </h:column>
                <h:column>
                    <f:facet name="header"><h:outputText value="Location" /></f:facet>
                    <h:outputText value="#{d.location}" />
                </h:column>
                <h:column>
                    <f:facet name="header"><h:outputText value="Mobile No" /></f:facet>
                    <h:outputText value="#{d.mobileNo}" />
                </h:column>
                <h:column>
                    <f:facet name="header"><h:outputText value="Status" /></f:facet>
                    <h:outputText value="#{d.isStatus}" />
                </h:column>
            </h:dataTable>
        </div>
    </div>

</body>
</html>
</f:view>
