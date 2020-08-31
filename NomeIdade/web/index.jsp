<%-- 
    Document   : index
    Created on : 31 de ago de 2020, 20:03:16
    Author     : uilsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    String dataAtual = new java.text.SimpleDateFormat("yyyy").format(new java.util.Date());
    int Idade = Integer.parseInt(dataAtual) - 1987;
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>        
        <h1>Nome: Uilton Santos do Amaral</h1>
        <h1>Idade: <%= Idade%></h1>
    </body>
</html>
