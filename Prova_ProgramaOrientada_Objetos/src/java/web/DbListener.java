/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import br.edu.fatecpg.poo.Disciplina;
import java.sql.*;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author uilsa
 */
public class DbListener implements ServletContextListener {
    private static final String CLASS_NAME = "org.sqlite.JDBC";
    private static final String DB_URL ="jdbc:sqlite:provap2.db";
    public static String exceptionMessage = null;
    
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        String etapa = "Inicialização";
        Connection con = null;
        Statement stmt = null;
        Disciplina d = null;
        try{
             etapa = "Registrando a classe";
            Class.forName(CLASS_NAME);
            etapa = "Conectando com o banco de dados";
            con = getConnection();               
            etapa = "Criando a tabela de Disciplinas";
            stmt = con.createStatement();  
            stmt.execute(Disciplina.getCreateStatement());
            
            if (Disciplina.getList().isEmpty()){
                   stmt.execute("INSERT INTO DISCIPLINAS "
                           + "(nome, ementa, semestre) VALUES "
                           + "('Programação Orientada a Objetos', 'ADS', 4)"); 
                   stmt.execute("INSERT INTO DISCIPLINAS"
                           + "(nome, ementa, semestre) VALUES "
                           + "('Laboratorio de Banco de Dados', 'ADS', 5)");
                   stmt.execute("INSERT INTO DISCIPLINAS"
                           + "(nome, ementa, semestre) VALUES "
                           + "('Gestão de Projetos', 'ADS', 5)");
                   stmt.execute("INSERT INTO DISCIPLINAS"
                           + "(nome, ementa, semestre) VALUES "
                           + "('Engenharia de Software III', 'ADS', 4)");
                   stmt.execute("INSERT INTO DISCIPLINAS"
                           + "(nome, ementa, semestre) VALUES "
                           + "('Metodologia de Pesquisa', 'ADS', 4)");
                   stmt.execute("INSERT INTO DISCIPLINAS"
                           + "(nome, ementa, semestre) VALUES "
                           + "('Ingles IV', 'ADS', 4)");
            }
            
        }catch(Exception ex){
            exceptionMessage = etapa+ ": "+ex.getLocalizedMessage();     
        }finally{            
           try{stmt.close(); }catch(Exception ex2){}         
           try{ con.close();}catch(Exception ex2){}     
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
    public static Connection getConnection() throws Exception{
        return DriverManager.getConnection(DB_URL);  
    }
}
