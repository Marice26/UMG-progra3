/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

/**
 *
 * @author Marice
 */
public class Alumnos {
    private int Alu_Codigo;
    private String Alu_Nombre;
    private String Alu_Direccion;
    private String Alu_Estatus;
    private String Alu_Jornada;

    public Alumnos(int Alu_Codigo) {
        this.Alu_Codigo = Alu_Codigo;
    }
    
    
     public Alumnos(String Alu_Nombre) {
        this.Alu_Nombre = Alu_Nombre;
    }

    public Alumnos() {
    }

    public Alumnos(int Alu_Codigo, String Alu_Nombre) {
        this.Alu_Codigo = Alu_Codigo;
        this.Alu_Nombre = Alu_Nombre;
    }
    
        
    
    

    public Alumnos(String Alu_Nombre, String Alu_Direccion, String Alu_Estatus, String Alu_Jornada) {
        this.Alu_Codigo = Alu_Codigo;
        this.Alu_Nombre = Alu_Nombre;
        this.Alu_Direccion = Alu_Direccion;
        this.Alu_Estatus = Alu_Estatus;
        this.Alu_Jornada = Alu_Jornada;
    }
    
     

    public int getAlu_Codigo() {
        return Alu_Codigo;
    }

    public void setAlu_Codigo(int Alu_Codigo) {
        this.Alu_Codigo = Alu_Codigo;
    }

    public String getAlu_Nombre() {
        return Alu_Nombre;
    }

    public void setAlu_Nombre(String Mae_Nombre) {
        this.Alu_Nombre = Alu_Nombre;
    }

    public String getAlu_Direccion() {
        return Alu_Direccion;
    }

    public void setAlu_Direccion(String Mae_Direccion) {
        this.Alu_Direccion = Alu_Direccion;
    }

    public String getAlu_Estatus() {
        return Alu_Estatus;
    }

    public void setAlu_Estatus(String Mae_Estatus) {
        this.Alu_Estatus = Alu_Estatus;
    }

    public String getAlu_Jornada() {
        return Alu_Jornada;
    }

    public void setAlu_Jornada(String Alu_Jornada) {
        this.Alu_Jornada = Alu_Jornada;
    }

    
    
    @Override
    public String toString() {
        return "Alumnos{" + "Alu_Codigo=" + Alu_Codigo + ", Alu_Nombre=" + Alu_Nombre + ", Alu_Direccion=" + Alu_Direccion + ", Alu_Estatus=" + Alu_Estatus +",Alu_Jornada="+ Alu_Jornada+ '}';
    }
    
    
  
}