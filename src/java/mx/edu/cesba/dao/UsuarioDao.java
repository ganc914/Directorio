/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.cesba.dao;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.cesba.util.Conexion;
import mx.edu.cesba.util.MD5;



/**
 *
 * @author hsuarez
 */
public class UsuarioDao {
    public static boolean autenticarUsuario(String nombre,String contrasena){
        boolean resultado=false;
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        try{
            con=Conexion.abrirConexion();
            String sql="select * from usuarios where nombre='"+nombre+"'";
            st=con.createStatement();
            rs=st.executeQuery(sql);
            if(rs.next()){
                if(rs.getString("contrasena").equals(MD5.getMd5(contrasena))){
                    resultado=true;
                }
            }
        }catch(Exception ex){            
        }
        return resultado;
    }
}
