
package Control;

import Model.historico;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Gabs
 */
public class consultaHistorico {
    private ArrayList<historico> resultado;
    private ConexaoBD conexao;
    
    public consultaHistorico(ConexaoBD con){
        conexao = con;
    }
    
    public ArrayList<historico>getHistorico(){
        resultado = new ArrayList<historico>();
        ResultSet rs = null;
        String consulta;
        historico campo;
        
        consulta = "SELECT tipo_consulta, data FROM HISTORICO";
        
        try{
            conexao.st.execute(consulta);
            rs = conexao.st.getResultSet();
            rs.next();
            while(rs.isAfterLast() == false){
                 campo = new historico();
                 campo.setTipo_consulta(rs.getString(1));
                 campo.setData_hora(rs.getTimestamp(2).toString());
                 resultado.add(campo);
                 rs.next();
            }
            
	}catch(SQLException e){
            System.out.println(e);
        }
        
        return resultado;
    }
    
}
