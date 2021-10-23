
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.cesba.dao.PersonaDao;
import mx.edu.cesba.dao.UsuarioDao;
import mx.edu.cesba.model.Persona;
import mx.edu.cesba.util.Conexion;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hsuarez
 */

public class TestBD {
    public static void main(String []args){
       System.out.println(UsuarioDao.autenticarUsuario("hsuarez", "123456"));
    }
}
