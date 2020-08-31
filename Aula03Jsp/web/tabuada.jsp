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
        <title>Tabuada</title>
    </head>
    <body>
        <h1>Java Server Pages</h1>
        <a href="index.jsp"> <-Voltar </a>  
        <h2>Tabuada</h2>
        <form>Digite qual a tabuada
            <input type="number" name="n">
            <input type="submit" name="Gerar">
            </form>
        <table border="1">
            <tr>
                Numeros
            </tr>                
        <% if (request.getParameter("n")==null){%>
            <tr><td>Não há parametro</td></tr>    
        <%}else{
            int n = Integer.parseInt(request.getParameter("n"));
            for (int i=1; i<=10;i++){ %>
        <tr><td>
           <h4>  <%= n%> x <%=i%>= <%=n*i%></h4>
            </td></tr>
           <% }}
           %>
         </table>
         
    </body>
</html>
