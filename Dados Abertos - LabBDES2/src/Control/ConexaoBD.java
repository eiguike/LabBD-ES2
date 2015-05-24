package Control;
import java.sql.*;

public class ConexaoBD {
    //Objeto que guarda informacoes da conexao com o SGBD.
    private Connection myConnection;

    //Objeto usado para enviar comandos SQL no SGBD
    Statement st;
    private boolean conectado;

    public boolean isConectado() {
        return conectado;
    }

    public void setConectado(boolean conectado) {
        this.conectado = conectado;
    }

    // Construtor
    public ConexaoBD(){
        setConectado(false);
        try{
            Class.forName("org.postgresql.Driver").newInstance();
            
            myConnection = DriverManager.getConnection("jdbc:postgresql:" +
                    "//localhost/trabalho?user=postgres&password=postgres");
            st = myConnection.createStatement();
            setConectado(true);
        }
        catch (Exception e){
            setConectado(false);
            e.printStackTrace();
        }
    }
}