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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author USUARIO
 */
public class Tiendas {

    Conexion con;

    public Tiendas() {
        this.con = Conexion.getConexion();
    }

    public boolean registrarCliente(Cliente c) {

        ClienteJpaController cjc = new ClienteJpaController(con.getBd());
        for (Cliente cliente : this.getClientes()) {
            if (cliente.getEmail().equals(c.getEmail())) {
                return false;
            }
        }
        cjc.create(c);
        return true;
    }

    public boolean registrarServicios(Servicio s) {

        ServicioJpaController sjc = new ServicioJpaController(con.getBd());
        for (Servicio se : this.getServicios()) {
            if (se.getNombre().equals(s.getNombre())) {
                return false;
            }
        }
        sjc.create(s);
        return true;
    }

    public boolean registrarTienda(Tienda t) {

        TiendaJpaController tjc = new TiendaJpaController(con.getBd());
        for (Tienda ti : this.getTienda()) {
            if (ti.getEmail().equals(t.getEmail()) && ti.getNombre().equals(t.getNombre())) {
                return false;
            }
        }
        tjc.create(t);
        return true;
    }

    public void Seguir(Tienda t, Cliente c) {
        List<Cliente> lc = this.getClientes();
        for (Cliente cli : lc) {
            if (cli.getEmail().equals(c.getEmail())) {
                List<Tienda> ltc = cli.getTiendaList();
                ltc.add(t);
            }
        }
    }

    public void updateCliente(Cliente c) {
        ClienteJpaController cjc = new ClienteJpaController(con.getBd());
        try {
            cjc.edit(c);
        } catch (Exception ex) {
            Logger.getLogger(Tiendas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Servicio> getServiciosTienda(Tienda t) {
        System.out.println("t em "+ t.getEmail());
        TiendaJpaController tjc = new TiendaJpaController(con.getBd());
        Tienda newT = tjc.findTienda(t.getId());
        return newT.getServicioList();
    }

    public List<Tienda> getTiendaCliente(Cliente c) {
        ClienteJpaController cjc = new ClienteJpaController(con.getBd());
        Cliente cli = cjc.findCliente(c.getId());
        return cli.getTiendaList();
    }

    public Cliente FindCliente(String email, String clave) {
        List<Cliente> lc = this.getClientes();
        for (Cliente c : lc) {
            if (c.getEmail().equals(email) && c.getClave().equals(clave)) {
                return c;
            }
        }
        return null;
    }

    public Tienda FindTienda(String email, String clave) {
        List<Tienda> lt = this.getTienda();
        for (Tienda t : lt) {
            if (t.getEmail().equals(email) && t.getClave().equals(clave)) {
                return t;
            }
        }
        return null;
    }
      public Tienda FindTiendaByName(String nombre) {
        List<Tienda> lt = this.getTienda();
        for (Tienda t : lt) {
            if (t.getNombre().equals(nombre)) {
                return t;
            }
        }
        return null;
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
        ServicioJpaController sjc = new ServicioJpaController(con.getBd());
        List<Servicio> ls = sjc.findServicioEntities();
        if (ls != null) {
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
