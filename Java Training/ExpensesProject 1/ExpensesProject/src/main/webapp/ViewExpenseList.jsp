<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Daily Expenses</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen">
    <div class="container mx-auto p-6 transition-all duration-300 ease-in-out transform hover:scale-[1.01]">
        <h2 class="text-3xl font-bold mb-6 text-center text-indigo-700 transition duration-300">Daily Expenses</h2>

        <!-- Set Group ID Form -->
        <h:form>
            <div class="mb-4">
                <h:outputLabel for="groupId" value="Enter Group ID:"
                    styleClass="block font-semibold text-gray-700 mb-2" />
                <h:inputText id="groupId" value="#{expenseController.groupId}" required="true"
                    styleClass="w-full border border-gray-300 p-3 rounded-lg transition-all duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500" />
            </div>
            <h:commandButton value="Load Expenses"
                action="#{expenseController.dailyExpensesListMethod}"
                styleClass="bg-indigo-600 hover:bg-indigo-700 text-white font-semibold px-6 py-3 rounded-lg transition duration-300 ease-in-out transform hover:scale-105" />
        </h:form>

        <!-- Expenses Table -->
        <h:form>
            <div class="mt-8 overflow-x-auto transition-all duration-500">
                <h:dataTable
                    value="#{expenseController.dailyExpensesList}"
                    var="expense"
                    styleClass="w-full table-auto border-collapse border border-gray-300 rounded-lg shadow-md"
                    headerClass="bg-indigo-600 text-white text-left px-4 py-3 transition-all"
                    rowClasses="bg-white text-gray-800 border-b hover:bg-indigo-50 transition duration-300 ease-in-out">

                    <h:column>
                        <f:facet name="header">Expense ID</f:facet>
                        <h:outputText value="#{expense.expId}" />
                    </h:column>

                    <h:column>
                        <f:facet name="header">Description</f:facet>
                        <h:outputText value="#{expense.expenseDescription}" />
                    </h:column>

                    <h:column>
                        <f:facet name="header">Amount</f:facet>
                        <h:outputText value="#{expense.amount}" />
                    </h:column>

                    <h:column>
                        <f:facet name="header">Date</f:facet>
                        <h:outputText value="#{expense.expenseDate}">
                            <f:convertDateTime pattern="yyyy-MM-dd" />
                        </h:outputText>
                    </h:column>

                    <h:column>
                        <f:facet name="header">Paid By (User ID)</f:facet>
                        <h:outputText value="#{expense.paidBy}" />
                    </h:column>
                </h:dataTable>
            </div>
        </h:form>
    </div>
</body>
</html>
</f:view>
