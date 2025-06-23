<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Add New Expense</title>
</head>
<body>
    <f:view>
        <h:form>
            <h2>Add New Expense</h2>

            <!-- Description -->
            <h:outputLabel for="description" value="Description:" />
            <h:inputText id="description" value="#{expensesController.ejbExpense.description}" required="true" />
            <br/><br/>

            <!-- Amount -->
            <h:outputLabel for="amount" value="Amount:" />
            <h:inputText id="amount" value="#{expensesController.ejbExpense.total_amount}" required="true">
                <f:convertNumber />
            </h:inputText>
            <br/><br/>

            <!-- Date -->
            <h:outputLabel for="date" value="Expense Date:" />
            <h:inputText id="date" value="#{expensesController.ejbExpense.expense_date}" required="true">
                <f:convertDateTime pattern="yyyy-MM-dd" />
            </h:inputText>
            <br/><br/>

            <!-- Group ID (You can use dropdown with list if needed) -->
            <h:outputLabel for="group" value="Group ID:" />
            <h:inputText id="group" value="#{expensesController.ejbExpense.groups.id}" required="true" />
            <br/><br/>

            <!-- Paid By (User ID) -->
            <h:outputLabel for="paidBy" value="Paid By (User ID):" />
            <h:inputText id="paidBy" value="#{expensesController.ejbExpense.paidBy.id}" required="true" />
            <br/><br/>

            <!-- Submit -->
            <h:commandButton value="Add Expense" action="#{expensesController.addExpense}" />
        </h:form>
    </f:view>
</body>
</html>
