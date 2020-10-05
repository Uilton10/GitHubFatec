<%-- 
    Document   : newjsp
    Created on : 21 de set de 2020, 20:50:14
    Author     : uilsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.edu.fatecpg.poo.Horario"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>


<%
        java.util.Date agora = new java.util.Date();
        Horario atual = new Horario();
       GregorianCalendar gc = new GregorianCalendar();
        atual.setHora(gc.get(Calendar.HOUR));
        atual.setHora(gc.get(Calendar.MINUTE));
        atual.setHora(gc.get(Calendar.SECOND));
         Horario fimTarefa = new Horario(21,0,0);
        
         String data = "dd/MM/yyyy";
String hora = "h:mm - a";
String data1, hora1;
SimpleDateFormat formata = new SimpleDateFormat(data);
	data1 = formata.format(agora);
	formata = new SimpleDateFormat(hora);
	hora1 = formata.format(agora);
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h5> <b>A hora atual é <%= atual.getHorario() %></b></h5>        
        <h5> <b>A tarefa termina as <%= hora1 %></b></h5>
    </body>
</html>
