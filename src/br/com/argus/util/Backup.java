/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.argus.util;

import br.com.argus.view.Mensagem;
import java.awt.Desktop;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javafx.scene.control.Alert;

/**
 *
 * @author Hakkinen
 */
public class Backup {
    
//    public static void bakcup (String dir) throws IOException{
//    
//        ProcessBuilder processBuilder = null;
//        Process process;
//        BufferedReader bufferedReader = null;
//        
//        processBuilder = new ProcessBuilder("C:\\Program Files\\PostgreSQL\\9.6\\bin\\pg_dump.exe"
//                + "--file \"C:\\\\Users\\\\santo\\\\DOCUME~1\\\\NETBEA~1\\\\PROJET~2\\\\src\\\\backup\\\\PROJET~2.SQL\""
//                + " --host \"localhost\" "
//                + "--port \"5432\""
//                + " --username \"postgres\" "
//                + "--no-password "
//                + "--verbose "
//                + "--role \"postgres\" "
//                + "--format=p "
//                + "--create"
//                + " --inserts "
//                + "--column-inserts "
//                + "--encoding \"UTF8\" \"Projeto_PBD\"");
//        processBuilder.environment().put(dir, dir)
//    
//    }
    
    public static void realizaBackup() throws IOException, InterruptedException{
        
        final List<String> comandos = new ArrayList<String>();
        comandos.add("C:\\Program Files\\PostgreSQL\\9.6\\bin\\pg_dump.exe");
           
       // comandos.add("-i");      
        comandos.add("-h");      
        comandos.add("localhost");     //ou  comandos.add("192.168.0.1"); 
        comandos.add("-p");      
        comandos.add("5432");      
        comandos.add("-U");      
        comandos.add("postgres");      
        comandos.add("-F");      
        comandos.add("c");      
        comandos.add("-b");      
        comandos.add("-v");      
        comandos.add("-f");
        
        //comandos.add("C:\\Users\\santo\\DOCUME~1\\NETBEA~1\\PROJET~2\\src\\backup\\Projeto_PBD_Atualizado");
        Date d = new Date();
        String dataAtual = java.text.DateFormat.getDateInstance(DateFormat.MEDIUM).format(d);
       // comandos.add("D:\\Projeto_"+dataAtual+"_PBD.backup");
        comandos.add("Projeto_PBD.backup");
        comandos.add("Projeto_PBD");
        
        ProcessBuilder processBuilder = new ProcessBuilder(comandos);
        
        processBuilder.environment().put("PGPASSWORD", "12345");

        try {      
            final Process process = processBuilder.start();
            final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getErrorStream()));
            String line = bufferedReader.readLine();
            while(line!=null){
            System.err.println(line);
            line = bufferedReader.readLine();
            }
            bufferedReader.close();
            process.waitFor();
            process.destroy();
            Mensagem.getInstance().confirmar("Backup", "Backup do Banco de Dados realizado com sucesso", Alert.AlertType.INFORMATION);
            String file = "Projeto_PBD.backup";
            Desktop.getDesktop().open(new File(file));
           } catch (IOException e) {      
               e.printStackTrace();      
           } catch (InterruptedException ie) {      
               ie.printStackTrace();      
           }         
        
    }
    
    public static void realizarBackupSaida() throws IOException, InterruptedException{
        
        final List<String> comandos = new ArrayList<String>();
        comandos.add("C:\\Program Files\\PostgreSQL\\9.6\\bin\\pg_dump.exe");
           
       // comandos.add("-i");      
        comandos.add("-h");      
        comandos.add("localhost");     //ou  comandos.add("192.168.0.1"); 
        comandos.add("-p");      
        comandos.add("5432");      
        comandos.add("-U");      
        comandos.add("postgres");      
        comandos.add("-F");      
        comandos.add("c");      
        comandos.add("-b");      
        comandos.add("-v");      
        comandos.add("-f");
        
        //comandos.add("C:\\Users\\santo\\DOCUME~1\\NETBEA~1\\PROJET~2\\src\\backup\\Projeto_PBD_Atualizado");
        Date d = new Date();
        String dataAtual = java.text.DateFormat.getDateInstance(DateFormat.MEDIUM).format(d);
       // comandos.add("D:\\Projeto_"+dataAtual+"_PBD.backup");
        comandos.add("ProjetoSaida_PBD.backup");
        comandos.add("Projeto_PBD");
        
        ProcessBuilder processBuilder = new ProcessBuilder(comandos);
        
        processBuilder.environment().put("PGPASSWORD", "12345");

        try {      
            final Process process = processBuilder.start();
            final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getErrorStream()));
            String line = bufferedReader.readLine();
            while(line!=null){
            System.err.println(line);
            line = bufferedReader.readLine();
            }
            bufferedReader.close();
            process.waitFor();
            process.destroy();
            //Mensagem.getInstance().confirmar("Backup", "Backup do Banco de Dados realizado com sucesso", Alert.AlertType.INFORMATION);
            String file = "Projeto_PBD.backup";
           // Desktop.getDesktop().open(new File(file));
           } catch (IOException e) {      
               e.printStackTrace();      
           } catch (InterruptedException ie) {      
               ie.printStackTrace();      
           }   
    }
}
