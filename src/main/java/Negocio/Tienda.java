/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Dao.Conexion;

/**
 *
 * @author USUARIO
 */
public class Tienda {
    
    Conexion con;

    public Tienda() {
        this.con=Conexion.getConexion();
    }
    
    
    
}
