/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.argus.business;

import br.com.argus.exceptions.BussinesException;
import br.com.argus.exceptions.DAOException;
import br.com.argus.model.Resp_Financeiro;

/**
 *
 * @author santo
 */
public interface IRes_FinBusiness extends IBusiness<Resp_Financeiro>{
    
    public Resp_Financeiro buscarRep (String pesquisa) throws BussinesException;
    
     public Resp_Financeiro buscarCPF (String cpf) throws BussinesException;
}
