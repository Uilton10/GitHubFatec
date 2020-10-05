<%-- 
    Document   : index
    Created on : 5 de out de 2020, 12:33:42
    Author     : uilsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.edu.fatecpg.poo.disciplina"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<%disciplina lDisciplina = new disciplina("Uilton Santos do Amaral", "Analise de Sistemas", 5);%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="WEB-INF/jspf/headReference.jsp" %>  
        <title>Prova - Programação Orientada a Objetos</title>
    </head>
    <body>
        <div id="cabecalho"><%@include file="WEB-INF/jspf/menu.jspf"%>
            <%
           ArrayList materias = lDisciplina.GetMaterias(lDisciplina.getSemestre());
       %>
        <table>
            <h5>
            <hr> <hd> <b>Nome: </b></hd><hd> Uilton Santos do Amaral</hd></hr>
            <hr> <hd> <b>Número de Matricula: </b></hd><hd> 1290481913055</hd></hr>
            <hr> <hd> <b>Disciplinas Cursadas: </b></hd><hd> <%=materias.size()%></hd></hr>
            </h5>
        </table>
        
    </body>
</html>
