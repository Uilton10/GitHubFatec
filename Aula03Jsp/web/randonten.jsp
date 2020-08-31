<%-- 
    Document   : index
    Created on : 31 de ago de 2020, 19:40:44
    Author     : uilsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Numeros aleatorios</title>
    </head>
    <body>
        <h1>Java Server Pages</h1>
        <h2>Data/hora no servidor</h2>
        <h3>Utilizando Scriptlet:</h3>
        <%
        java.util.Date agora = new java.util.Date();
        out.println("<h4>Agora no servidor: "+agora+"</h4>");
        %>
        <h3>Utilizando expression</h3>
         <h4>Agora no servidor: <%=agora %></h4>         
         <a href="index.jsp"> <-Voltar </a>    
    </body>
</html>
