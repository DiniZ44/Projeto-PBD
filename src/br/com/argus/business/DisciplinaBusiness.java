/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.argus.business;

import br.com.argus.exceptions.ValidacaoException;
import br.com.argus.model.Disciplina;

/**
 *
 * @author santo
 */
public class DisciplinaBusiness extends Business<Disciplina> implements IDisciplinaBusiness{

    @Override
    public void isValid(Disciplina t) throws ValidacaoException {
        
    }
    
}
