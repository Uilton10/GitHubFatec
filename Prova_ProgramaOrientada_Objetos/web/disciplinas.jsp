<%-- 
    Document   : disciplinas
    Created on : 5 de out de 2020, 13:01:54
    Author     : uilsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.edu.fatecpg.poo.disciplina"%>
<%@page import="java.util.ArrayList"%>
<%disciplina lDisciplina = new disciplina("Uilton Santos do Amaral", "Analise de Sistemas", 5);%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="WEB-INF/jspf/headReference.jsp" %>  
        <title>Disciplinas</title>
        
    </head>
    <body>
        <div id="cabecalho"><%@include file="WEB-INF/jspf/menu.jspf"%>
       <%
           ArrayList materias = lDisciplina.GetMaterias(lDisciplina.getSemestre());
       %>
       <table>
           <%
           for (int i= 0; i < materias.size(); i++){%>
            <hr>
            <hd>
                   <%=materias.get(i)%></hd><hd>
                       <form>
                          <%Double tNota = lDisciplina.getNota(i);                          
                          %> 
                          <input type="number" id="nota" value=""<%=tNota%>"></input>
                          <input type="submit" value="Salvar">
                        </form>
                          <%
                              if (request.getParameter("nota")!=null){
                              Double dNota = Double.parseDouble(request.getParameter("nota"));
                              lDisciplina.setNota(dNota, i);
                              }
                          %>
            <hd>
            <hr>
          <% } %>
       </table>
       
    </body>
</html>
