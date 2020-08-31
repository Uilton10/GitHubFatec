<%-- 
    Document   : index
    Created on : 31 de ago de 2020, 19:40:44
    Author     : uilsa
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Numeros aleatorios</title>
    </head>
    <body>
        <h1>Java Server Pages</h1>
        <a href="index.jsp"> <-Voltar </a>  
        <h2>Numeros Aleatorios</h2>
        <table border="1">
            <tr>
                Numeros
                </tr>
                
        <% for (int i=1; i<=10;i++){ %>
        <tr><td>
            <%= ((int)(100*Math.random()))%>
            </td></tr>
           <% } %>
         </table>
         
    </body>
</html>
