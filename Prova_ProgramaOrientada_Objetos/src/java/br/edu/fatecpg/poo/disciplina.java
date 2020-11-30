/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;
import java.util.ArrayList;
import java.sql.*;
import web.DbListener;
/**
 *
 * @author uilsa
 */
public class Disciplina {
    private String nome, ementa;
    private int semestre;
    private ArrayList<Double> nota = new ArrayList();

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public int getSemestre() {
        return semestre;
    }

    public void setSemestre(int semestre) {
        this.semestre = semestre;
    }

    public Double getNota(int i) {
        Double dNota;
        try{
            dNota = this.nota.get(i);
        }catch (Exception e){
            dNota = 0.0;
        }
        return dNota;
    }

    public void setNota(Double dnota, int i) {
        this.nota.add(i, dnota);
    }
    
    public Disciplina(String nome, String ementa, int semestre){
        this.nome = nome;
        this.ementa = ementa;
        this.semestre = semestre;
    }
     public static String getCreateStatement(){
        return "CREATE TABLE IF NOT EXISTS DISCIPLINAS ("      
         +"nome VARCHAR(100) PRIMARY KEY NOT NULL, "
         +"ementa VARCHAR(200)  NOT NULL, "
         +"semestre NUMBER NOT NULL"
         + ")" ;
    }
     
     public static ArrayList<Disciplina> getList() throws Exception{
        ArrayList<Disciplina> list =new ArrayList<>();
        Connection con = null;
        Statement stmt = null;
        Exception methodException = null;
        ResultSet rs = null;
        try{        
                  
            con = DbListener.getConnection(); 
            stmt = con.createStatement();  
            rs = stmt.executeQuery("SELECT * FROM DISCIPLINAS ");
            while(rs.next()){
            list.add(new Disciplina(
            rs.getString("nome"),
            rs.getString("ementa"),
            rs.getInt("semestre")       
            ));
            
            }
        } catch(Exception ex){
            methodException =  ex;
        }finally{            
           try{stmt.close(); }catch(Exception ex2){}         
           try{ con.close();}catch(Exception ex2){}     
        }
    return list;
    }
   
      public static void InsertList(String nome,  String ementa, int semestre) throws Exception{
        Connection con = null;
        PreparedStatement stmt = null;
        Exception methodException = null;
        ResultSet rs = null;
        try{        
                  
            con = DbListener.getConnection(); 
            stmt = con.prepareStatement("INSERT INTO DISCIPLINAS"
                            + "(nome, ementa, semestre) VALUES "
                           + "(?, ?, ?)");  
            stmt.setString(1, nome);
            stmt.setString(2, ementa);
            stmt.setInt(3, semestre);
           
            stmt.execute();
            
        } catch(Exception ex){
            methodException =  ex;
        }finally{            
           try{stmt.close(); }catch(Exception ex2){}         
           try{ con.close();}catch(Exception ex2){}     
        }   
    }
      
       public static void UpdatetList(String nome, String novoNome, String ementa, int semestre) throws Exception{
        Connection con = null;
        PreparedStatement stmt = null;
        Exception methodException = null;
        ResultSet rs = null;
        try{        
                  
            con = DbListener.getConnection(); 
            stmt = con.prepareStatement("UPDATE DISCIPLINAS "
                            + "SET nome  = ?, "
                            + "ementa = ?, "
                            + "semestre = ? "
                           + "WHERE nome = ?");  
            stmt.setString(1, novoNome);
            stmt.setString(2, ementa);
            stmt.setInt(3, semestre);
            stmt.setString(4, nome);
            stmt.execute();
            
        } catch(Exception ex){
            methodException =  ex;
        }finally{            
           try{stmt.close(); }catch(Exception ex2){}         
           try{ con.close();}catch(Exception ex2){}     
        }   
    }
        public static void DeletetList(String nome) throws Exception{
        Connection con = null;
        PreparedStatement stmt = null;
        Exception methodException = null;
        ResultSet rs = null;
        try{        
                  
            con = DbListener.getConnection(); 
            stmt = con.prepareStatement("DELETE FROM DISCIPLINAS "                            
                           + "WHERE nome = ?");  
            stmt.setString(1, nome);            
            stmt.execute();
            
        } catch(Exception ex){
            methodException =  ex;
        }finally{            
           try{stmt.close(); }catch(Exception ex2){}         
           try{ con.close();}catch(Exception ex2){}     
        }   
    }
}
