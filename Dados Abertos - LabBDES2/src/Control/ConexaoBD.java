package Control;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

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
                    "//localhost:5432/trabalho?user=postgres&password=1234");
            st = myConnection.createStatement();
            setConectado(true);
        }
        catch (Exception e){
            setConectado(false);
            e.printStackTrace();
        }
        
        String texto_consulta = 
                "CREATE TEMPORARY TABLE TabConsultaAvancada(codMunicipio INTEGER,codPrograma INTEGER,codNatureza INTEGER,anoInic INTEGER,gasto NUMERIC);INSERT INTO TabConsultaAvancada SELECT d.codigomunicipio, d.codigoprograma, d.codigonatureza, d.dataano, SUM(d.valor) FROM despesa d, programa p, natureza n, municipio m WHERE m.codigo = d.codigomunicipio AND d.codigoprograma = p.codigo AND d.codigonatureza = n.codigo GROUP BY d.codigomunicipio, d.codigoprograma, d.codigonatureza, d.dataano;CREATE OR REPLACE VIEW ConsultaAvancada(munic, progr, natu, data, gasto) AS SELECT * FROM TabConsultaAvancada;";
        try {
            st.execute(texto_consulta);
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}