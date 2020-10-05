/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;

/**
 *
 * @author uilsa
 */
public class Horario {
    private int hora, minuto, segundo;

    public int getHora() {        
        return hora;
    }

    public void setHora(int hora) {
        if (hora < 0)
            hora = 0;
        else if (hora > 23) {
            hora = 23;
        }
              
        this.hora = hora;
    }

    public int getMinuto() {
        return minuto;
    }

    public void setMinuto(int minuto) {
        if (minuto < 0)
            minuto = 0;
        else if (minuto > 59) {
            minuto = 59;
        }
        this.minuto = minuto;
    }

    public int getSegundo() {
        return segundo;
    }

    public void setSegundo(int segundo) {
        if (segundo < 0)
            segundo = 0;
        else if (segundo > 59) {
            segundo = 59;
        }
        this.segundo = segundo;
    }
    public String getHorario(){
    String horario ="";
    if (this.hora < 10) {
    horario += "0";
    }
    horario += this.hora+":";
    if (this.minuto < 10) {
    horario += "0";
    }
    horario += this.minuto+":";;
    if (this.segundo < 10) {
    horario += "0";
    }
    horario += this.segundo+":";;
        return horario;
    }
    public Horario(){};
    public Horario(int hora, int minuto, int segundo) {
        this.hora = hora;
        this.minuto = minuto;
        this.segundo = segundo;
    }
    
}
