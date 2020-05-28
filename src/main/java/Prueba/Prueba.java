/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Prueba;

import Dto.Cliente;
import Dto.Servicio;
import Dto.Tienda;
import Negocio.Tiendas;

/**
 *
 * @author USUARIO
 */
public class Prueba {
    
    public static void main(String[] args) {
        
       Cliente c=new Cliente(5,"a","a@a.com","1234");
        Tienda t=new Tienda(5, "alfred", "tu puedes", "alfred@alfred.com","1234", "yo", "alfred", "www.alfred.com", "img");
        Servicio s=new Servicio(10, "reparar", "repara todo");
        s.setTienda(t);
        Tiendas tiendas=new Tiendas();
        tiendas.registrarCliente(c);
        tiendas.registrarServicios(s);
        tiendas.registrarTienda(t);
        
        //seguir una tienda
        tiendas.Seguir(t, c);
        
        //actualizar tienda
        Cliente newc=new Cliente(5, "al", "al@al.com", "1234");
        tiendas.updateCliente(newc);
    }
}
