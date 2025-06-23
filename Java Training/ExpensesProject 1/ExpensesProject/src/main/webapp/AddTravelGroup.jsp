<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%> 
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%> 
<f:view>
<html>
<head>
    <title>Add Travel Group</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-br from-white via-blue-50 to-indigo-100 min-h-screen flex items-center justify-center p-6">
    <div class="bg-white rounded-xl shadow-lg max-w-lg w-full p-10
                transform transition-transform duration-500 ease-in-out hover:scale-105 hover:shadow-2xl">
        <h1 class="text-3xl font-extrabold text-indigo-700 mb-8 text-center select-none animate-fadeInDown">
            Add Travel Group
        </h1>
        <h:form prependId="false" styleClass="space-y-6">
            <div>
                <h:outputLabel for="createdBy" value="Created By" styleClass="block mb-2 font-semibold text-gray-700 select-none" />
                <h:inputText id="createdBy" value="#{travelGroup.createdBy}" styleClass="w-full px-4 py-3 border border-gray-300 rounded-lg
                                                                                     focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 transition-colors duration-300" />
            </div>

            <div>
                <h:outputLabel for="groupName" value="Group Name" styleClass="block mb-2 font-semibold text-gray-700 select-none" />
                <h:inputText id="groupName" value="#{travelGroup.groupName}" styleClass="w-full px-4 py-3 border border-gray-300 rounded-lg
                                                                                   focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 transition-colors duration-300" />
            </div>

            <div>
                <h:outputLabel for="startDate" value="Start Date" styleClass="block mb-2 font-semibold text-gray-700 select-none" />
                <h:inputText id="startDate" value="#{travelGroup.startDate}" styleClass="w-full px-4 py-3 border border-gray-300 rounded-lg
                                                                                   focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 transition-colors duration-300">
                    <f:convertDateTime pattern="yyyy-MM-dd" />
                </h:inputText>
            </div>

            <div>
                <h:outputLabel for="endDate" value="End Date" styleClass="block mb-2 font-semibold text-gray-700 select-none" />
                <h:inputText id="endDate" value="#{travelGroup.endDate}" styleClass="w-full px-4 py-3 border border-gray-300 rounded-lg
                                                                                 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 transition-colors duration-300">
                    <f:convertDateTime pattern="yyyy-MM-dd" />
                </h:inputText>
            </div>

            <div>
                <h:outputLabel for="initialAmount" value="Initial Amount" styleClass="block mb-2 font-semibold text-gray-700 select-none" />
                <h:inputText id="initialAmount" value="#{travelGroup.initialAmount}" styleClass="w-full px-4 py-3 border border-gray-300 rounded-lg
                                                                                         focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 transition-colors duration-300" />
            </div>

            <div>
                <h:commandButton action="#{userDao.addGroup(travelGroup)}" value="Add Group"
                                 styleClass="w-full bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-3 rounded-lg
                                             transition-colors duration-300 select-none cursor-pointer transform hover:scale-105 hover:shadow-lg" />
            </div>
        </h:form>
    </div>

    <style>
        @keyframes fadeInDown {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .animate-fadeInDown {
            animation: fadeInDown 0.6s ease forwards;
        }
    </style>
</body>
</html>
</f:view>
