<%-- 
    Document   : index
    Created on : 31 de ago de 2020, 21:32:08
    Author     : uilsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/headReference.jspf" %>   
        <%@include file="WEB-INF/jspf/bodyReference.jspf" %>      
        <link type="text/css" rel="stylesheet" href="WEB-INF/jspf/masterpage.css">        
        <title>Tela Inicial</title>
    </head>
    <body>
        <div id="geral">
    <div id="cabecalho"><%@include file="WEB-INF/jspf/menu.jspf" %></div>
    <div id="principal">       
        <div id="conteudo-2">
            <div id="conteudo-2-1"> <h1/> </div>
            <div id="conteudo-2-2">       
        <h2>Tela Inicial</h2>    
        <h4>Cálculo de Parcelas</h4><br>
        <table class="table" ><tr>
         <td><h5>Desenvolvido por </h5></td><td>Uilton Santos do Amaral</td> 
       </tr> <tr>  <td>
       <h5>Conteúdo</hr></td></tr>
         
       <%-- <tr><img src="imgs/tenor.gif" /></tr>--%>
        </table>
                        <table class="table" >
                    <tr><td>
                        <a href="Amortizacao_Contante.jsp">Sistema de Amortização Constante</a>                            
                        </td><td>
                            O sistema de amortização constante (SAC) é uma forma de amortização de um empréstimo por prestações que incluem os juros, amortizando assim partes iguais do valor total do empréstimo.
                        </td>                    
                        </tr>
                         <tr><td>
                        <a href="Amortizacao_Americana.jsp">Sistema de Amortização Americana</a>                            
                        </td><td>
                            O Sistema Americano de Amortização é um tipo de quitação de empréstimo que favorece aqueles que desejam pagar o valor principal através de uma única parcela, porém os juros devem ser pagos periodicamente.
                        </td>                    
                        </tr>
                        <tr><td>
                        <a href="Tabela_Price.jsp">Tabela Preço</a>                            
                        </td><td>
                            Tabela Price, também chamado de sistema francês de amortização, é um método usado em amortização de empréstimo cuja principal característica é apresentar prestações (ou parcelas) iguais.
                        </td>                    
                        </tr>
                </table>
    </div>
        <div id="conteudo-2-3">  <h1/>
        
        </div>        
    </div>
    <%@include file="WEB-INF/jspf/footerReference.jspf" %> 
</div>
         </div>
    </body>
</html>
