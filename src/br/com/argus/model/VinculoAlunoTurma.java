/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.argus.model;

import br.com.argus.enuns.SituacaoAluno;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 *
 * @author santo
 */

@Entity
@Table(name = "vinculo_aluno")
@SequenceGenerator(name = Entidade.SEQUENCE_ENTIDADE, sequenceName = VinculoAlunoTurma.SEQUENCE_ENTIDADE, initialValue = 1, allocationSize = 1)
public class VinculoAlunoTurma extends Entidade{
    
    public static final long serialVersionUID = 1L;
    protected static final String SEQUENCE_ENTIDADE = "vinculo_aluno_sequence";
    
    @Column
    private double nota1;
    
    @Column
    private double nota2;
   
    @Column
    private double nota3;
   
    @Column
    private double nota4;
    
    @Column
    private double notaFinal;
   
    @Column
    private double media;
    
    @Column
    private double mediaFinal;
    
    
    @Enumerated(EnumType.STRING)
    private SituacaoAluno situacaoAluno;
    
    @ManyToOne
    private DisciplinaTurma disciplinaTurma;
    
    
    @ManyToOne
    private Aluno aluno;

    public double getNotaFinal() {
        return notaFinal;
    }

    public void setNotaFinal(double notaFinal) {
        this.notaFinal = notaFinal;
    }
    
    public double getNota1() {
        return nota1;
    }

    public void setNota1(double nota1) {
        this.nota1 = nota1;
    }

    public double getNota2() {
        return nota2;
    }

    public void setNota2(double nota2) {
        this.nota2 = nota2;
    }

    public double getNota3() {
        return nota3;
    }

    public void setNota3(double nota3) {
        this.nota3 = nota3;
    }

    public double getNota4() {
        return nota4;
    }

    public void setNota4(double nota4) {
        this.nota4 = nota4;
    }

    public double getMedia() {
        return media;
    }

    public void setMedia(double media) {
        this.media = media;
    }

    public double getMediaFinal() {
        return mediaFinal;
    }

    public void setMediaFinal(double mediaFinal) {
        this.mediaFinal = mediaFinal;
    }

    public SituacaoAluno getSituacaoAluno() {
        return situacaoAluno;
    }

    public void setSituacaoAluno(SituacaoAluno situacaoAluno) {
        this.situacaoAluno = situacaoAluno;
    }

    public Aluno getAluno() {
        return aluno;
    }

    public void setAluno(Aluno aluno) {
        this.aluno = aluno;
    }

    public DisciplinaTurma getDisciplinaTurma() {
        return disciplinaTurma;
    }

    public void setDisciplinaTurma(DisciplinaTurma disciplinaTurma) {
        this.disciplinaTurma = disciplinaTurma;
    }

    @Override
    public String toString() {
        return " " + disciplinaTurma;
    }
    
    
    

    
}
