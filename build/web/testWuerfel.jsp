<%-- 
    Document   : test
    Created on : 12.04.2012, 08:36:28
    Author     : rainer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="wuerfel" class="model.Wuerfel" scope="session"/> 
<jsp:setProperty name="wuerfel" property="*"/>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% wuerfel.wuerfeln(); %>
        <img name="wuerfel" 
             title="<%= wuerfel.getTitle() %>" 
             src="<%= wuerfel.getImage() %>" 
             alt="<%= wuerfel.getAlt() %>"/>
    </body>
</html>
