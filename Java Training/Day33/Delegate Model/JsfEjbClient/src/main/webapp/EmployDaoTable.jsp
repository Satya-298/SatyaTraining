
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%> 
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%> 

<f:view>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h:form>
        		<center>
                <h2><h:outputText value="Employ Records"/></h2>
            </center>
        <h:dataTable value="#{ejbImpl.showEmployEjb()}" var="e" border="3">
              	    <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Employ No" />
                    </f:facet>
                    <h:outputText value="#{e.empno}"/>
                </h:column>
                    <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Employ Name" />
                    </f:facet>
                    <h:outputText value="#{e.name}"/>
                </h:column>
                    <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Department" />
                    </f:facet>
                    <h:outputText value="#{e.dept}"/>
                </h:column>
                    <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Designation" />
                    </f:facet>
                    <h:outputText value="#{e.desig}"/>
                </h:column>
                    <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Salary" />
                    </f:facet>
                    <h:outputText value="#{e.basic}"/>
                </h:column>
  <h:column>
        <f:facet name="header">
            <h:outputLabel value="Update Employ" />
        </f:facet>
        <h:commandButton action="#{ejbImpl.searchEmployEjb(e.empno)}" 
            value="Update Employ" />
    </h:column>
   <h:column>
        <f:facet name="header">
            <h:outputLabel value="Delete Employ" />
        </f:facet>
        <h:commandButton action="#{ejbStateful.deleteEmployEjb(e.empno)}" 
            value="Delete Employ" />
    </h:column>
        </h:dataTable>
         <h:commandLink action="addEmploy">Add Employ</h:commandLink>
        </h:form> <br/><br/>
       
    </body>
</html>
</f:view>
