<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center p-6">
    <div class="bg-white rounded-2xl shadow-xl max-w-md w-full p-8 transition-all duration-300 hover:shadow-2xl">
        <h1 class="text-3xl font-bold text-center text-indigo-700 mb-8">Dashboard</h1>

        <h:form>
            <div class="flex flex-col gap-4">
                <h:commandLink value="Add User"
                    action="AddUser"
                    styleClass="text-white bg-indigo-600 hover:bg-indigo-700 px-6 py-3 rounded-lg text-center font-semibold transition duration-300 ease-in-out transform hover:scale-105 text-lg" />
                
                <h:commandLink value="Add Travel Group"
                    action="AddTravelGroup"
                    styleClass="text-white bg-indigo-600 hover:bg-indigo-700 px-6 py-3 rounded-lg text-center font-semibold transition duration-300 ease-in-out transform hover:scale-105 text-lg" />
                
                <h:commandLink value="Add Group Members"
                    action="AddGroupMembers"
                    styleClass="text-white bg-indigo-600 hover:bg-indigo-700 px-6 py-3 rounded-lg text-center font-semibold transition duration-300 ease-in-out transform hover:scale-105 text-lg" />
                
                <h:commandLink value="Add Daily Expense"
                    action="AddDailyExpense"
                    styleClass="text-white bg-indigo-600 hover:bg-indigo-700 px-6 py-3 rounded-lg text-center font-semibold transition duration-300 ease-in-out transform hover:scale-105 text-lg" />
                
                <h:commandLink value="Expense Split"
                    action="ExpenseSplit"
                    styleClass="text-white bg-indigo-600 hover:bg-indigo-700 px-6 py-3 rounded-lg text-center font-semibold transition duration-300 ease-in-out transform hover:scale-105 text-lg" />
                
                <h:commandLink value="View Expense List"
                    action="ViewExpenseList"
                    styleClass="text-white bg-indigo-600 hover:bg-indigo-700 px-6 py-3 rounded-lg text-center font-semibold transition duration-300 ease-in-out transform hover:scale-105 text-lg" />
            </div>
        </h:form>
    </div>
</body>
</html>
</f:view>
