
package mx.edu.ipn.cecyt9.Anicare.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {
    String url = "jdbc:mysql://localhost/lab3";
    String usr = "root";
    String pass = "n0m3l0";
    Connection conexion = null;
    Statement sta = null;
    ResultSet rset = null;
    
    public Connection getConnection()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch(ClassNotFoundException ex00)
        {
            System.out.print("Error por clase inexistente.");
        }
        
        try
        {
            conexion = DriverManager.getConnection(url, usr, pass);
        }
        catch(SQLException e)
        {
            System.out.println("Error de la conexion" + e.getMessage());
        }
            
        return conexion;
    }
    
    public void cerrar() throws SQLException {
        conexion.close();
    }
    
    
    
    public boolean Conecta (String Nombre, String Apellido)
    {
        boolean valida = false;
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usr, pass);
        } 
        catch (Exception e) 
        {
            System.out.println("Error en la conexión: " + e.toString());
        }
        
        try 
        {
            sta = conexion.createStatement();
            rset = sta.executeQuery("select * from Usuario where user = '" + Nombre + "' and password = '" + Apellido + "'");
            if(rset.next())
            {
                valida = true;
            }
            else
                valida = false;
        } 
        catch (Exception e) 
        {
            System.out.println("Error: " + e.toString());
        }
        
        return valida;
    }
}