/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;
import java.util.ArrayList;
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
    
    public ArrayList GetMaterias(int semestre){
        ArrayList materias = new ArrayList();
        materias.clear();
        switch (semestre){
            case 1: 
                materias.add("Semestre 1 - Materia 1");
                materias.add("Semestre 1 - Materia 2");
                materias.add("Semestre 1 - Materia 3");
                materias.add("Semestre 1 - Materia 4");
                materias.add("Semestre 1 - Materia 5");
                break;
            case 2: 
                materias.add("Semestre 2 - Materia 1");
                materias.add("Semestre 2 - Materia 2");
                materias.add("Semestre 2 - Materia 3");
                materias.add("Semestre 2 - Materia 4");
                materias.add("Semestre 2 - Materia 5");
                break;
            case 3: 
                materias.add("Semestre 3 - Materia 1");
                materias.add("Semestre 3 - Materia 2");
                materias.add("Semestre 3 - Materia 3");
                materias.add("Semestre 3 - Materia 4");
                materias.add("Semestre 3 - Materia 5");
                break;
            case 4: 
                materias.add("Semestre 4 - Materia 1");
                materias.add("Semestre 4 - Materia 2");
                materias.add("Semestre 4 - Materia 3");
                materias.add("Semestre 4 - Materia 4");
                materias.add("Semestre 4 - Materia 5");
                break;
            case 5:                     
                materias.add("Programação Orientada a Objetos");
                materias.add("Engenharia de Software III");
                materias.add("Laboratorio de Banco de Dados");
                materias.add("Gestão de Projetos");
                materias.add("Metodologia de Pesquisa");
                materias.add("Inglês IV");
                break;
            case 6: 
                materias.add("Semestre 6 - Materia 1");
                materias.add("Semestre 6 - Materia 2");
                materias.add("Semestre 6 - Materia 3");
                materias.add("Semestre 6 - Materia 4");
                materias.add("Semestre 6 - Materia 5");  
                break;
        }
        return materias;
    }
}
