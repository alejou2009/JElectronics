/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package udem.edu.co.ejb;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import udem.edu.co.entities.Usuarios;
import java.util.List;
/**
 *
 * @author User
 */
@Stateless
public class UsuariosFacade extends AbstractFacade<Usuarios> {

    @PersistenceContext(unitName = "JElectronicsPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuariosFacade() {
        super(Usuarios.class);
    }
    
    public Usuarios loginWeb(Usuarios usuarioAux){
        Usuarios loginResponse=null;
        String queryLogin;
        System.out.println(usuarioAux.getCorreo());
        try{
            queryLogin= "FROM Usuarios l WHERE l.correo = ?1 and l.contraseña = ?2";//Busqueda de los datos que se ingresan en la base de datos
            Query query= em.createQuery(queryLogin);
            query.setParameter(1, usuarioAux.getCorreo());
            query.setParameter(2, usuarioAux.getContrasena());
            System.out.println(query.getResultList());
            List<Usuarios> lista = query.getResultList();
            if (lista.isEmpty()) {
                return null;
            }else{
                System.out.println("encontrado");
                return lista.get(0);
            }        
        }catch(Exception e){
            System.out.println("error "+e.getMessage());
        }
        return loginResponse;
    }
}
