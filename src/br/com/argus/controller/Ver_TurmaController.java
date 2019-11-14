package br.com.argus.controller;

import br.com.argus.app.App;
import br.com.argus.exceptions.BussinesException;
import br.com.argus.facade.Facade;
import br.com.argus.model.Turma;
import java.io.IOException;
import java.net.URL;
import java.util.List;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

public class Ver_TurmaController implements Initializable{
    
    public static final String CADASTRO_TURMA = "/br/com/argus/view/Cadastrar_Turma.fxml" ;
    public static final String VER_TURMA = "/br/com/argus/view/Ver_Turma.fxml" ;
    
    @FXML
    private TableView<Turma> turma_table;
    
    @FXML
    private TableColumn<Turma, String> table_name;

    @FXML
    private TableColumn<Turma, String> table_disciplinas;

    @FXML
    private TextField pesquisa;


    @FXML
    void adcionar_Turma(ActionEvent event) throws IOException {
        App.genericaStage(CADASTRO_TURMA).show();
    }

    @FXML
    void sicronizar(ActionEvent event) throws IOException {
        App.genericaStage(VER_TURMA);
    }

    @FXML
    void buscar_turma(ActionEvent event) {

    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            carregarTabela(Facade.getInstance().buscarTodosTurma());
        } catch (BussinesException ex) {
            ex.printStackTrace();
        }
    }
    void carregarTabela(List<Turma> turmas){
    table_name.setCellValueFactory(new PropertyValueFactory<>("nome"));
    table_disciplinas.setCellValueFactory(new PropertyValueFactory<>("disciplina")); 
        
     turma_table.getItems().setAll(turmas);
    }
}
