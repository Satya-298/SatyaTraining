<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<f:view>
<html>
<head>
    <title>Add User</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-br from-white via-blue-50 to-indigo-100 min-h-screen flex items-center justify-center p-6">
    <div
        class="bg-white rounded-xl shadow-lg max-w-md w-full p-8
               transform transition-transform duration-500 ease-in-out
               hover:scale-105 hover:shadow-2xl"
        style="will-change: transform, box-shadow;"
    >
        <h1 class="text-3xl font-extrabold text-indigo-700 mb-8 text-center select-none
                   animate-fadeInDown">
            Add User
        </h1>
        <h:form prependId="false" styleClass="space-y-6">
            <div>
                <h:outputLabel for="userName" value="User Name" styleClass="block mb-2 font-semibold text-gray-700 select-none" />
                <h:inputText id="userName" value="#{users.userName}"
                             styleClass="w-full px-4 py-3 border border-gray-300 rounded-lg
                                         focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500
                                         transition-colors duration-300" />
                <h:message for="userName" styleClass="text-red-600 text-sm mt-1 block" />
            </div>

            <div>
                <h:outputLabel for="email" value="User Email" styleClass="block mb-2 font-semibold text-gray-700 select-none" />
                <h:inputText id="email" value="#{users.email}"
                             styleClass="w-full px-4 py-3 border border-gray-300 rounded-lg
                                         focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500
                                         transition-colors duration-300" />
                <h:message for="email" styleClass="text-red-600 text-sm mt-1 block" />
            </div>

            <div>
                <h:commandButton action="#{userDao.addUserDao(users)}" value="Add User"
                                 styleClass="w-full bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-3 rounded-lg
                                             transition-colors duration-300 select-none cursor-pointer
                                             transform hover:scale-105 hover:shadow-lg" />
            </div>
        </h:form>
    </div>

    <style>
        /* Simple fadeInDown animation */
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
