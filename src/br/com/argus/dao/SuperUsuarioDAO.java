/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.argus.dao;

import br.com.argus.model.SuperUsuario;

/**
 *
 * @author santo
 */
public class SuperUsuarioDAO extends Dao<SuperUsuario> implements ISuperUsuarioDAO{
    
    public SuperUsuarioDAO() {
        super(SuperUsuario.class);
    }
    
}
