<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %> 
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %> 

<f:view>
<html>
<head>
    <title>Doctor Records</title>
</head>
<body>
    <h:form>
        <center>
            <h2><h:outputText value="Doctor Records" /></h2>
        </center>

        <!-- Doctor Table -->
        <h:dataTable value="#{doctorController.showAllDoctors()}" var="doctor" border="2" cellpadding="5" cellspacing="0">
            <!-- Doctor Info -->
            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Doctor ID" />
                </f:facet>
                <h:outputText value="#{doctor.doctorId}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Doctor Name" />
                </f:facet>
                <h:outputText value="#{doctor.doctorName}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Specialization" />
                </f:facet>
                <h:outputText value="#{doctor.specialization.name}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Location" />
                </f:facet>
                <h:outputText value="#{doctor.location}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Mobile Number" />
                </f:facet>
                <h:outputText value="#{doctor.mobileNo}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Status" />
                </f:facet>
                <h:outputText value="#{doctor.isStatus}" />
            </h:column>

            <!-- Action to view more details of the doctor -->
            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Action" />
                </f:facet>
                <h:commandButton value="View Details" action="#{doctorController.viewDoctorDetails(doctor)}" />
            </h:column>

            <!-- Show additional info (example: specialization details) -->
            <h:column>
                <h:panelGroup rendered="#{doctorController.expandedDoctorId == doctor.doctorId}">
                    <h:outputText value="Doctor Specialization: #{doctor.specialization.description}" style="font-weight: bold; margin-top:10px;" />
                    <!-- Add other detailed doctor info if needed -->
                </h:panelGroup>
            </h:column>
        </h:dataTable>
    </h:form>
</body>
</html>
</f:view>
