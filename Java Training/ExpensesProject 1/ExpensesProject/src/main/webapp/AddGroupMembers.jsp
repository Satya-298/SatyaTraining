<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%> 
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%> 
<f:view>
<html>
<head>
    <title>Add Group Members</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-br from-white via-blue-50 to-indigo-100 min-h-screen flex items-center justify-center p-6">
    <div class="bg-white rounded-xl shadow-lg max-w-md w-full p-10
                transform transition-transform duration-500 ease-in-out hover:scale-105 hover:shadow-2xl">
        <h1 class="text-3xl font-extrabold text-indigo-700 mb-8 text-center select-none">
            Add Group Members
        </h1>
        <h:form prependId="false" styleClass="space-y-6">
            <div>
                <h:outputLabel for="groupId" value="Group Id" styleClass="block mb-2 font-semibold text-gray-700 select-none" />
                <h:inputText id="groupId" value="#{groupMembers.groupId}" 
                    styleClass="w-full px-4 py-3 border border-gray-300 rounded-lg
                               focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 transition-colors duration-300" />
            </div>

            <div>
                <h:outputLabel for="userId" value="User Id" styleClass="block mb-2 font-semibold text-gray-700 select-none" />
                <h:inputText id="userId" value="#{groupMembers.userId}" 
                    styleClass="w-full px-4 py-3 border border-gray-300 rounded-lg
                               focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 transition-colors duration-300" />
            </div>

            <div>
                <h:outputLabel for="amountCollected" value="Amount Collected" styleClass="block mb-2 font-semibold text-gray-700 select-none" />
                <h:inputText id="amountCollected" value="#{groupMembers.amountCollected}" 
                    styleClass="w-full px-4 py-3 border border-gray-300 rounded-lg
                               focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 transition-colors duration-300" />
            </div>

            <div>
                <h:commandButton action="#{userDao.addGroupMembers(groupMembers)}" value="Add Members"
                    styleClass="w-full bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-3 rounded-lg
                               transition-colors duration-300 select-none cursor-pointer transform hover:scale-105 hover:shadow-lg" />
            </div>
        </h:form>
    </div>
</body>
</html>
</f:view>
