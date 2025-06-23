<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Medication History Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen pt-24 font-sans">

    <!-- Navigation Bar -->
    <div class="fixed top-0 left-0 right-0 bg-blue-900 text-white py-4 px-6 shadow-lg z-50">
        <div class="max-w-7xl mx-auto flex justify-between items-center flex-wrap">
            <h1 class="text-lg font-bold">💊 Medication History</h1>
            <h:form styleClass="flex flex-wrap gap-3 mt-2 sm:mt-0">
                <h:commandButton value="👨‍⚕️ Doctor Dashboard" action="DoctorDashboard"
                                 styleClass="bg-white text-blue-900 font-semibold px-4 py-2 rounded hover:bg-blue-100 transition" />
                <h:commandButton value="👤 Patient Dashboard" action="PatientDashboard"
                                 styleClass="bg-white text-blue-900 font-semibold px-4 py-2 rounded hover:bg-blue-100 transition" />
                <h:commandButton value="🏠 Home" action="MainDashboard.jsp"
                                 styleClass="bg-white text-blue-900 font-semibold px-4 py-2 rounded hover:bg-blue-100 transition" />
            </h:form>
        </div>
    </div>

    <!-- Dashboard Panel -->
    <div class="flex justify-center items-center mt-40">
        <div class="bg-white p-8 rounded-lg shadow-md w-96 text-center">
            <h2 class="text-2xl font-semibold text-blue-800 mb-6">📋 Medication History Dashboard</h2>
            <h:form>
                <!-- Centered Buttons -->
                <div class="flex flex-col gap-4">
                    <h:commandButton value="➕ Add Medication History" action="AddMedicationHistory"
                                     styleClass="bg-blue-600 text-white font-semibold py-2 rounded hover:bg-blue-700 transition" />
                    <h:commandButton value="📋 Show Medical History by Patient ID" action="ShowPatientMedicalHistory"
                                     styleClass="bg-blue-600 text-white font-semibold py-2 rounded hover:bg-blue-700 transition" />
                    <h:commandButton value="🧪 Show Patient Tests" action="ShowPatientTests"
                                     styleClass="bg-blue-600 text-white font-semibold py-2 rounded hover:bg-blue-700 transition" />
                </div>
            </h:form>
        </div>
    </div>

</body>
</html>
</f:view>
