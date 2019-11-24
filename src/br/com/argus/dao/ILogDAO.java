/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.argus.dao;

import br.com.argus.exceptions.DAOException;
import br.com.argus.model.Log;
import java.util.List;

/**
 *
 * @author Hakkinen
 */
public interface ILogDAO extends IDao<Log>{
    
    public List<Log> buscarTudo () throws DAOException;
    
}
