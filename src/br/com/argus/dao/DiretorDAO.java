/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.argus.dao;

import br.com.argus.model.Diretor;

/**
 *
 * @author santo
 */
public class DiretorDAO extends Dao<Diretor> implements IDiretorDAO{
    
    public DiretorDAO() {
        super(Diretor.class);
    }
    
}
