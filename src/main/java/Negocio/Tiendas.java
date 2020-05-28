/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Dao.ClienteJpaController;
import Dao.Conexion;
import Dao.ServicioJpaController;
import Dao.TiendaJpaController;
import Dto.Cliente;
import Dto.Servicio;
import Dto.Tienda;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class Tiendas {
    
    Conexion con;

    public Tiendas() {
        this.con=Conexion.getConexion();
    }
    
    public boolean registrarCliente(Cliente c) {

        ClienteJpaController cjc = new ClienteJpaController(con.getBd());
        for (Cliente cliente :this.getClientes()) {
            if(cliente.getEmail().equals(c.getEmail())){
               return false;
            }
        }
        cjc.create(c);
        return true;
    }
     public boolean registrarServicios(Servicio s) {

        ServicioJpaController sjc= new ServicioJpaController(con.getBd());
         for (Servicio se :this.getServicios()) {
            if(se.getNombre().equals(s.getNombre())){
               return false;
            }
        }
        sjc.create(s);
        return true;
    }
      public boolean registrarTienda(Tienda t) {

       TiendaJpaController tjc = new TiendaJpaController(con.getBd());
         for(Tienda ti:this.getTienda()){
             if(ti.getEmail().equals(t.getEmail()) && ti.getNombre().equals(t.getNombre())){
                 return false;
             }
         }
        tjc.create(t);
        return true;
    }
      
     public List<Cliente> getClientes() {
        ClienteJpaController cjc = new ClienteJpaController(con.getBd());
        List<Cliente> lc = cjc.findClienteEntities();
        if (lc != null) {
            return lc;
        }
        return null;
    }
     public List<Servicio> getServicios() {
         ServicioJpaController sjc= new ServicioJpaController(con.getBd());
         List<Servicio> ls=sjc.findServicioEntities();
         if(ls !=null){
             return ls;
         }
         return null;
    }
      public List<Tienda> getTienda() {
        TiendaJpaController tjc = new TiendaJpaController(con.getBd());
        List<Tienda> lt = tjc.findTiendaEntities();
        if (lt != null) {
            return lt;
        }
        return null;
    }

}
