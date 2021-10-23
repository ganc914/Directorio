/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.cesba.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hsuarez
 */
public class Conexion {
    private static Connection con;
    
    public static Connection abrirConexion(){        
        try {
            if(con!=null){
                con.close();
            }
            Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.
                getConnection("jdbc:mysql://localhost:3306/directorio", "root", "root");
        } catch (Exception ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;   
    }
}
