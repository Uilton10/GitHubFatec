<%-- 
    Document   : disciplinas
    Created on : 5 de out de 2020, 13:01:54
    Author     : uilsa
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<%
    String exceptionMessage = null;
    if (request.getParameter("formInsert")!=null){ 
        try{
            String nome = request.getParameter("nome");
            String ementa = request.getParameter("ementa");
            int semestre = Integer.parseInt(request.getParameter("semestre"));
            Disciplina.InsertList(nome, ementa, semestre);
            response.sendRedirect(request.getRequestURI());
        }catch(Exception ex){
            exceptionMessage = ex.getMessage();
        }
    }
    if (request.getParameter("formUpdate")!=null){ 
        try{
            String nome = request.getParameter("nome");
            String nomeNovo = request.getParameter("nomeNovo");
            String ementa = request.getParameter("ementa");
            int semestre = Integer.parseInt(request.getParameter("semestre"));
            Disciplina.UpdatetList(nome, nomeNovo, ementa, semestre);
            response.sendRedirect(request.getRequestURI());
            
        }catch(Exception ex){
            exceptionMessage = ex.getMessage();
        }
    }
    if (request.getParameter("formDelete")!=null){ 
        try{    
            String nome = request.getParameter("nome");
            Disciplina.DeletetList(nome);
            response.sendRedirect(request.getRequestURI());
        }catch(Exception ex){
            exceptionMessage = ex.getMessage();
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="WEB-INF/jspf/headReference.jsp" %>  
        <title>Disciplinas</title>
        
    </head>
    <body>
        <%if (request.getParameter("prepararInsert")!=null){%>
            <h3>Inserir Registro</h3>
                 <form>
                    Nome: <input type="text" name="nome"/>
                    Ementa: <input type="text" name="ementa"/>
                    Semestre: <input type="number" name="semestre"/>
                    <input type="submit" name="formInsert" value="Inserir"/>
                    <input type="submit" name="Cancelar" value="Cancelar"/>
                </form>
        <%}else if (request.getParameter("prepararUpdate")!=null){%>
            <h3>Atualizar Registro</h3>
                 <form>
                     <%
                        String snome = request.getParameter("nome");
                        String ementa = request.getParameter("ementa");
                        String semestre = request.getParameter("semestre");
                     %>
                    <input type="hidden" name="nome" value="<%=snome%>"> 
                    Nome: <input type="text" name="nomeNovo" value="<%=snome%>"/>
                    Ementa: <input type="text" name="ementa" value="<%=ementa%>"/>
                    Semestre: <input type="number" name="semestre" value="<%=semestre%>"/>
                    <input type="submit" name="formUpdate" value="Atualizar"/>
                    <input type="submit" name="Cancelar" value="Cancelar"/>
                </form>
        <%}else if (request.getParameter("prepararDelete")!=null){%>
            <h3>Atualizar Registro</h3>
                 <form>
                     <%
                        String snome = request.getParameter("nome");                        
                     %>
                    <input type="hidden" name="nome" value="<%=snome%>"> 
                    Excluir o registro <b> <%=snome%> </b>
                    <input type="submit" name="formDelete" value="Excluir"/>
                    <input type="submit" name="Cancelar" value="Cancelar"/>
                </form>
         <%}else{%>
                <form method="post">                    
                    <input type="submit" name="prepararInsert" value="Inserir"/>
                </form>             
        <%}%>
       
            
       <table border = 1>
          <tr>
            <th>nome</th>
            <th>ementa</th>
            <th>semestre</th>
            <th>Comando</th>
            <%for(Disciplina d: Disciplina.getList()){%>
                <tr>
            <td><%= d.getNome() %></td>
            <td><%= d.getEmenta()%></td>
            <td><%= d.getSemestre()%></td>
            <td><form>
                    <input type="hidden" name="nome" value="<%=d.getNome() %>">
                    <input type="hidden" name="ementa" value="<%=d.getEmenta()%>">
                    <input type="hidden" name="semestre" value="<%=d.getSemestre()%>">
                    <input type="submit" name="prepararUpdate" value="Alterar">
                    <input type="submit" name="prepararDelete" value="Excluir">
                </form></td>
            </tr>
            <%}%>
          </tr>    
       </table>
       
    </body>
</html>
