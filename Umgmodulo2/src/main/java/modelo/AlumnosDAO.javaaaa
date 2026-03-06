/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;


import controlador.Alumnos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Marice
 */
public class AlumnosDAO {

    private static final String SQL_SELECT = "SELECT Alu_Codigo, Alu_Nombre, Alu_Direccion, Alu_Estatus, Alu_Jornada FROM Alumnos";
    private static final String SQL_QUERY = "SELECT Alu_Codigo, Alu_Nombre, Alu_Direccion, Alu_Estatus, Alu_Jornada FROM Alumnos WHERE Alu_Codigo = ?";
    private static final String SQL_INSERT = "INSERT INTO Alumnos(Alu_Nombre, Alu_Direccion, Alu_Estatus,Alu_Jornada) VALUES(?, ?, ?, ?)";
    private static final String SQL_UPDATE = "UPDATE Alumnos SET Alu_Nombre=?, Alu_Direccion=?, Alu_Estatus=?,Alu_Jornada=? WHERE Alu_Codigo = ?";
    private static final String SQL_DELETE = "DELETE FROM Alumos WHERE Alu_Codigo=?";
 
    
    public List<Alumnos> select() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Alumnos alumnosobjeto = null;
        List<Alumnos> alumnosdao = new ArrayList<Alumnos>();

        try {
            conn = conexion.getConnection(); //abre la base de datos, conecta
            stmt = conn.prepareStatement(SQL_SELECT); //Statement estado, preparar la conexion trayendo la accion/comando que va a accionar del sql en la base de datos
            rs = stmt.executeQuery(); //un set de datos record set??? que esta haciendo ahi? ejecutando el query el rs conecta hace el select y se trae los datos y quedará guardado en rs
            while (rs.next()) { //si se cumple el rs (conjunto de datos) . next quiere decir que hay datos,
                
                int Alu_Codigo = rs.getInt("Alu_Codigo");
                String Alu_Nombre = rs.getString("Alu_Nombre"); //campo de la base de datos
                String Alu_Direccion = rs.getString("Alu_Direccion");
                String Alu_Estatus = rs.getString("Alu_Estatus");
                String Alu_Jornada = rs.getString("Alu_Jornada");
                //quiere decir que va de uno a uno. 
                
                               
                alumnosobjeto = new Alumnos(); // Tu clase del controlador
                alumnosobjeto.setAlu_Codigo(Alu_Codigo);
                alumnosobjeto.setAlu_Nombre(Alu_Nombre);
                alumnosobjeto.setAlu_Direccion(Alu_Direccion);
                alumnosobjeto.setAlu_Estatus(Alu_Estatus);
                alumnosobjeto.setAlu_Jornada(Alu_Jornada);
                                
                alumnosdao.add(alumnosobjeto);
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            conexion.close(rs);
            conexion.close(stmt);
            conexion.close(conn);
        }

        return alumnosdao;
    }
    
    public int insert(Alumnos alumnosobjeto) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;
        try {
            conn = conexion.getConnection();
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setString(1, alumnosobjeto.getAlu_Nombre());
            stmt.setString(2, alumnosobjeto.getAlu_Direccion());
            stmt.setString(3, alumnosobjeto.getAlu_Estatus());
            stmt.setString(4, alumnosobjeto.getAlu_Jornada());
            
            
            System.out.println("ejecutando query:" + SQL_INSERT);
            rows = stmt.executeUpdate();
            System.out.println("Registros afectados:" + rows);
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            conexion.close(stmt);
            conexion.close(conn);
        }

        return rows;
    }
    
     public int update(Alumnos alumnosobjeto) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = conexion.getConnection();
            System.out.println("ejecutando query: " + SQL_UPDATE);
            stmt = conn.prepareStatement(SQL_UPDATE);
            stmt.setString(1, alumnosobjeto.getAlu_Nombre());
            stmt.setInt(2, alumnosobjeto.getAlu_Codigo());
            stmt.setString(3, alumnosobjeto.getAlu_Direccion());
            stmt.setString(4, alumnosobjeto.getAlu_Estatus());
            stmt.setString(5, alumnosobjeto.getAlu_Jornada());
            
            rows = stmt.executeUpdate();
            System.out.println("Registros actualizado:" + rows);

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            conexion.close(stmt);
            conexion.close(conn);
        }

        return rows;
    }
    
      public int delete(Alumnos alumnosobjeto) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = conexion.getConnection();
            System.out.println("Ejecutando query:" + SQL_DELETE);
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setInt(1, alumnosobjeto.getAlu_Codigo());
            rows = stmt.executeUpdate();
            System.out.println("Registros eliminados:" + rows);
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            conexion.close(stmt);
            conexion.close(conn);
        }

        return rows;
    }

//    public List<Persona> query(Persona empleado) { // Si se utiliza un ArrayList
    public Alumnos query(Alumnos alumnosobjeto) {    
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Alumnos> alumnosdao = new ArrayList<Alumnos>();
        int rows = 0;

        try {
            conn = conexion.getConnection();
            System.out.println("Ejecutando query:" + SQL_QUERY);
            stmt = conn.prepareStatement(SQL_QUERY);
            stmt.setInt(1, alumnosobjeto.getAlu_Codigo());
            rs = stmt.executeQuery();
            while (rs.next()) {
                int Alu_Codigo = rs.getInt("Alu_Codigo");
                String Alu_Nombre = rs.getString("Alu_Nombre");
                String Alu_Direccion = rs.getString("Alu_Direccion");
                String Alu_Estatus = rs.getString("Alu_Estatus");
                String Alu_Jornada = rs.getString("Alu_Jornada");

                
                alumnosobjeto = new Alumnos();
                alumnosobjeto.setAlu_Codigo(Alu_Codigo);
                alumnosobjeto.setAlu_Nombre(Alu_Nombre);
                alumnosobjeto.setAlu_Direccion(Alu_Direccion);
                alumnosobjeto.setAlu_Estatus(Alu_Estatus);
                alumnosobjeto.setAlu_Jornada(Alu_Jornada);
                
                
                //empleados.add(empleado); // Si se utiliza un ArrayList
            }
            //System.out.println("Registros buscado:" + empleado);
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            conexion.close(rs);
            conexion.close(stmt);
            conexion.close(conn);
        }

        //return empleados;  // Si se utiliza un ArrayList
        return alumnosobjeto;
    }
}