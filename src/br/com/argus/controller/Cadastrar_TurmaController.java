package br.com.argus.controller;

import br.com.argus.app.App;
import br.com.argus.exceptions.BussinesException;
import br.com.argus.facade.Facade;
import br.com.argus.model.Disciplina;
import br.com.argus.model.DisciplinaTurma;
import br.com.argus.model.Turma;
import br.com.argus.model.VinculoAlunoTurma;
import br.com.argus.util.MaskField;
import br.com.argus.view.Mensagem;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;

public class Cadastrar_TurmaController implements Initializable{
    public static final String CADASTRO_TURMA = "/br/com/argus/view/Cadastrar_Turma.fxml" ;
    private static Disciplina disciplina;
    private List<Disciplina> disciplinas;
    private List<VinculoAlunoTurma> vinculosAlunosTurma;
    private Turma turma;
    private DisciplinaTurma disciplinaTurma;
    private VinculoAlunoTurma alunoTurma;
    

    @FXML
    private TextField nome;


    @FXML
    private ComboBox<Disciplina> disciplina_cbox1;
    
    @FXML
    private TextField anoLetivo;
    
    @FXML
    private ComboBox<VinculoAlunoTurma> alunos_cbox;
    
    
    @FXML
    private TextField matricula_aluno;

    @FXML
    void salvar(ActionEvent event) {
        cadastrar();
    }
    
    @FXML
    void voltar(ActionEvent event) throws IOException {
        App.genericaStage(CADASTRO_TURMA).close();
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            carregaeDisciplinas();
        } catch (BussinesException ex) {
            ex.printStackTrace();
        }
    }
    
    void cadastrar(){
        turma = new Turma();
        disciplina = disciplina_cbox1.getValue();
        turma.setNome(nome.getText());
        turma.setAnoLetivo(anoLetivo.getText());
        disciplinaTurma = new DisciplinaTurma();
        disciplinaTurma.setTurma(turma);
        disciplinaTurma.setDisciplina(disciplina);
        
                  try {
                Facade.getInstance().inserirOuAtualizarDisciplinaTurma(disciplinaTurma);
                Mensagem.getInstance().mostrarMensagem("Cadastro Turma", "Cadastrado com sucesso", Alert.AlertType.INFORMATION);
                limpar();
                //carregarCombo();
            } catch (BussinesException ex) {
                Mensagem.getInstance().mostrarMensagem("Cadastro Turma", "Erro ao cadastrar Turma", Alert.AlertType.ERROR);
            }
 
    }
    
    void inserirDisciplina (){
        disciplina = disciplina_cbox1.getValue();
        
    }
    
    void inserirAluno(){
    
    }
    
    void limpar(){
        nome.clear();
        anoLetivo.clear();
    
    }
    

    
    void carregaeDisciplinas() throws BussinesException{
       disciplinas = Facade.getInstance().buscarTodosDisciplinas();
        MaskField.numericField(anoLetivo);
       disciplina_cbox1.getItems().setAll(disciplinas);
    }
    
    void carregarAluno() throws BussinesException{
        vinculosAlunosTurma = Facade.getInstance().buscarTodosVincAlunoTurma();
        alunos_cbox.getItems().setAll(vinculosAlunosTurma);
    }

}