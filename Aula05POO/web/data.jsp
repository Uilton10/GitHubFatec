<%-- 
    Document   : index
    Created on : 21 de set de 2020, 19:22:00
    Author     : uilsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.edu.fatecpg.poo.Data"%>

<%
    Data hoje = new Data();
    hoje.setDia(105);
    

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - Java00</title>
    </head>
    <body>
        <h1>JavaOO</h1>
        <h2>JavaOO</h2>
        <div>
            <h4>Hoje</h4>
           <%= hoje.getDia()%>/<%= hoje.mes%>/<%= hoje.ano%>
        </div>
        
    </body>
</html>
