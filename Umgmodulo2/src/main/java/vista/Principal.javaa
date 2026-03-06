/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package vista;

  import controlador.Alumnos;
  import modelo.AlumnosDAO;

/**
 *
 * @author Marice
 */
public class Principal {
    /**
     * @param args the command line arguments
     */
       public static void main(String[] args) {
        // TODO code application logic here
        //TODO LO QUE ESTA EN MINUSCULA ES OBJETO Y MAYUSCULA ES UNA CLASE
        Alumnos alumnosobjeto = new Alumnos("Marta","ZONA 1","INACTIVO","50");
        System.out.println(alumnosobjeto.toString());
        AlumnosDAO alumnosobjetodao = new AlumnosDAO();
        alumnosobjetodao.insert(alumnosobjeto);
       
        alumnosobjeto.setAlu_Codigo(3);
        alumnosobjeto=alumnosobjetodao.query(alumnosobjeto);
      
      //  alumnosobjeto.setAlu_Codigo(2);
       // alumnosobjetodao.delete(Alumnosobjeto);
        
       
       // alumnosobjeto.setAlu_Codigo(4);
        //alumnosobjeto.setAlui_Nombre("Maria Claus");
        
      // int v;
      //v=alumnosobjetodao.update(alumnosobjeto);
        
          System.out.println(alumnosobjeto.toString());
    
}
} 



