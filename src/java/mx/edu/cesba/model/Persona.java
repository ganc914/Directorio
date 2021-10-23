/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.cesba.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hsuarez
 */
public class Persona {
    public int id;
    public String nombre;
    public String apellidoPaterno;
    public String apellidoMaterno;
    public String fechaNacimiento;
    public String estatus;
    public List<Domicilio> domicilios=new ArrayList<>();
    public List<Telefono> telefonos=new ArrayList<>();
}
