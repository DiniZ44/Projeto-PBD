/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.argus.controller;

import br.com.argus.app.App;
import br.com.argus.exceptions.BussinesException;
import br.com.argus.facade.Facade;
import br.com.argus.model.Resp_Financeiro;
import br.com.argus.view.Mensagem;
import java.io.IOException;
import java.net.URL;
import java.util.List;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

/**
 * FXML Controller class
 *
 * @author santo
 */
public class Cadastrar_respController implements Initializable {
    
    private Resp_Financeiro resp_Financeiro;
    private static final String CADASTRO_RESP = "/br/com/argus/view/Cadastrar_Resp.fxml";
    
    @FXML
    private TextField nome_resp;

    @FXML
    private TextField cpf_resp;

    @FXML
    private TableView<Resp_Financeiro> turma_table;

    @FXML
    private TableColumn<Resp_Financeiro, String> table_name;

    @FXML
    private TableColumn<Resp_Financeiro, String> table_cpf;

    @FXML
    void salvar(ActionEvent event) throws BussinesException {
        cadastrar();
    }

    @FXML
    void voltar(ActionEvent event) throws IOException {
        App.genericaStage(CADASTRO_RESP).close();
    }
    @FXML
    void sicronizar(ActionEvent event) throws IOException {
         App.genericaStage(CADASTRO_RESP);
    }
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
           try {
               // TODO
               carregarTabela(Facade.getInstance().buscarTodosResp_FinS());
           } catch (BussinesException ex) {
               ex.printStackTrace();
           }
    }
    
    void carregarTabela(List<Resp_Financeiro> resps){
        table_name.setCellValueFactory(new PropertyValueFactory<>("nome"));
        table_cpf.setCellValueFactory(new PropertyValueFactory<>("cpf"));
        
        turma_table.getItems().setAll(resps);
        
    }
    
    void cadastrar() throws BussinesException{
        resp_Financeiro = new Resp_Financeiro();
        resp_Financeiro.setNome(nome_resp.getText());
        resp_Financeiro.setCpf(cpf_resp.getText());
        
        Facade.getInstance().inserirOuAtualizarResp_Fin(resp_Financeiro);
        limpar();
        Mensagem.getInstance().mostrarMensagem("Cadastro", "Cadastro feito com sucesso", Alert.AlertType.INFORMATION);
    }

    void limpar(){
       nome_resp.clear();
       cpf_resp.clear();}
        
}