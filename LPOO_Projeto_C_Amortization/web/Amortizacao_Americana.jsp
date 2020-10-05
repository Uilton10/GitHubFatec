<%-- 
    Document   : index
    Created on : 31 de ago de 2020, 19:40:44
    Author     : uilsa
--%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/headReference.jspf" %>   
        <%@include file="WEB-INF/jspf/bodyReference.jspf" %>      
        <link type="text/css" rel="stylesheet" href="WEB-INF/jspf/masterpage.css">        
        <title>Sistema de Amortização Americana</title>
    </head>
    <body>
        <div id="geral">
    <div id="cabecalho"><%@include file="WEB-INF/jspf/menu.jspf" %></div>
    <div id="principal">       
        <div id="conteudo-2">
            <div id="conteudo-2-1"> <h1/> </div>
            <div id="conteudo-2-2">       
        <h3>Sistema de Amortização Americana</h3>  
        <form><b>Informações para o Cálculo da dívida</b><br>
            <table class="table table-striped" color="white">                  
                <tr><td>
            <b>Digite o valor da divida: </b></td><td><input type="number" name="divida"><br>
                 </td><tr><td>
            <b>Digite a quantidade de parcelas: </b></td><td><input type="number" name="parcela"><br>
             </td><tr><td>
            <b>Digite o percentual de juros: </b></td><td><input type="number" name="juros"><br>
                <tr><td>
            <input type="submit" name="Gerar" value="Calcular" class="btn btn-dark"   >
            </td> </tr>
            </table>
            </form>
        <table border="1" class="table table-striped table-dark">
                  <thead class="thead-dark">     
                     
        <% if (request.getParameter("parcela")==null){%>
            <tr><td>Não há parametro</td></tr>    
        <%}else{%>     
            <%int n = Integer.parseInt(request.getParameter("parcela"));
            double total = Integer.parseInt(request.getParameter("divida"));
            double juros = Integer.parseInt(request.getParameter("juros"));           
            double parcela = 0;
            NumberFormat  nf = new DecimalFormat("R$ ###,###,###.##");
            double dividaTotal = 0;
            String s_parcela_pagar;
            double valor_juros = (total/100)*juros;%>        
            <b>Valor da divida:  <%=nf.format(total)%></b><br>
 <tr><td><b>Parcela</b></td><td><b>Valor</b></td> </tr>  </thead> <tbody>
           <% for (int i=1; i<=n;i++){ %>
        <tr><td>
              <%  
                  if (i == n){
                      parcela = valor_juros+total;
                  }else{
                      parcela = valor_juros;
                     
                      }
                   s_parcela_pagar = nf.format(parcela);
                      dividaTotal += parcela;
              %>  
             <%=i%></td><td> <%=s_parcela_pagar%>           
            </td></tr>
                     <% }
           s_parcela_pagar = nf.format(dividaTotal);
           %>
        <b><tr><td>Total</td><td>  <%=s_parcela_pagar%></td></tr></b>
        <%}%>
           </tbody>
         </table> 
         </div>
        <div id="conteudo-2-3">  <h1/></div>
        
    </div>
    <%@include file="WEB-INF/jspf/footerReference.jspf" %>  
</div>
         </div>
    </body>
</html>
