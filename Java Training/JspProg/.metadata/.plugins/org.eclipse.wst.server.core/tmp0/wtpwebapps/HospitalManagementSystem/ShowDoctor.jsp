<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Doctors List</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen py-10 px-6 font-sans">

    <h:form>

        <!-- Page Heading -->
        <div class="flex justify-between items-center mb-6">
            <h2 class="text-3xl font-bold text-blue-800">📋 List of All Doctors</h2>
            <h:commandButton value="🏠 Menu" action="#{doctorController.goToDashboard}"
                             styleClass="bg-blue-600 hover:bg-blue-700 text-white font-semibold px-4 py-2 rounded-md"/>
        </div>

        <!-- DataTable -->
        <div class="overflow-x-auto bg-white shadow-md rounded-lg">
            <h:dataTable value="#{doctorController.showAllDoctors}" var="d" styleClass="min-w-full text-left text-sm text-gray-700">

                <!-- Header -->
                <h:column>
                    <f:facet name="header">
                        <span class="font-semibold text-blue-800 bg-blue-100 px-4 py-2 block">Doctor ID</span>
                    </f:facet>
                    <span class="px-4 py-2 block"><h:outputText value="#{d.doctorId}" /></span>
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <span class="font-semibold text-blue-800 bg-blue-100 px-4 py-2 block">Doctor Name</span>
                    </f:facet>
                    <span class="px-4 py-2 block"><h:outputText value="#{d.doctorName}" /></span>
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <span class="font-semibold text-blue-800 bg-blue-100 px-4 py-2 block">Specialization</span>
                    </f:facet>
                    <span class="px-4 py-2 block"><h:outputText value="#{d.specialization}" /></span>
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <span class="font-semibold text-blue-800 bg-blue-100 px-4 py-2 block">Location</span>
                    </f:facet>
                    <span class="px-4 py-2 block"><h:outputText value="#{d.location}" /></span>
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <span class="font-semibold text-blue-800 bg-blue-100 px-4 py-2 block">Mobile No</span>
                    </f:facet>
                    <span class="px-4 py-2 block"><h:outputText value="#{d.mobileNo}" /></span>
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <span class="font-semibold text-blue-800 bg-blue-100 px-4 py-2 block">Status</span>
                    </f:facet>
                    <span class="px-4 py-2 block"><h:outputText value="#{d.isStatus}" /></span>
                </h:column>

            </h:dataTable>
        </div>

    </h:form>

</body>
</html>
</f:view>
