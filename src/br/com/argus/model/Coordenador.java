/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.argus.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 *
 * @author santo
 */
@Entity
@Table(name = "cord_pedagogo")
@SequenceGenerator(name = Entidade.SEQUENCE_ENTIDADE, sequenceName = Coordenador.SEQUENCE_ENTIDADE, initialValue = 1, allocationSize = 1)
public class Coordenador extends Usuario{
    
    public static final long serialVersionUID = 1L;
    protected static final String SEQUENCE_ENTIDADE = "coordenador_sequence";
   
    
}
