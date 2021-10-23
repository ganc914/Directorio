/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.cesba.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import mx.edu.cesba.model.Persona;
import mx.edu.cesba.util.Conexion;

/**
 *
 * @author hsuarez
 */
public class PersonaDao {
    public static List<Persona> consultarPersonas(){
        List<Persona> lista=null;
        Connection con=null;
        ResultSet rs=null;
        Statement st=null;
        try{
            con=Conexion.abrirConexion();
            String consulta="Select * from personas";
            st=con.createStatement();
            rs=st.executeQuery(consulta);
            lista=new ArrayList<>();
            while(rs.next()){
                Persona p=new Persona();
                p.id=rs.getInt("id");
                p.nombre=rs.getString("nombre");
                p.apellidoPaterno=rs.getString("apellido_paterno");
                p.apellidoMaterno=rs.getString("apellido_materno");
                lista.add(p);
            }
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        
        return lista;
    }
    public static List<Persona> buscarPersonasPorId(int id){
        List<Persona> lista=null;
        Connection con=null;
        ResultSet rs=null;
        Statement st=null;
        try{
            con=Conexion.abrirConexion();
            String consulta="Select * from personas where id="+id;
            st=con.createStatement();
            rs=st.executeQuery(consulta);
            lista=new ArrayList<>();
            while(rs.next()){
                Persona p=new Persona();
                p.id=rs.getInt("id");
                p.nombre=rs.getString("nombre");
                p.apellidoPaterno=rs.getString("apellido_paterno");
                p.apellidoMaterno=rs.getString("apellido_materno");
                lista.add(p);
            }
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        
        return lista;
    }
}
