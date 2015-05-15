/*
Model utilizado para esta consulta:

SELECT N.codigo, N.descricao, SUM(Desp.valor) AS gasto
FROM despesa Desp, natureza N, (
	SELECT M.codigo 
	FROM municipio M
	WHERE M.descricao = ''
)Mun
WHERE Mun.codigo = Desp.codigomunicipio AND N.codigo = Desp.codigonatureza
GROUP BY N.codigo, N.descricao
ORDER BY gasto DESC;
 */
package Control;
import Model.buscaNormal;
import java.util.Vector;
import Control.ConexaoBD;
import java.sql.*;

/**
 *
 * @author floss
 */
public class buscaNormalNatureza {
    private Vector<buscaNormal> resultado;
    private ConexaoBD conexao;
    
    buscaNormalNatureza(ConexaoBD con){
        conexao = con;
    }
    
    public Vector<buscaNormal> getBuscaNormalNatureza(String descricao){
        Vector<buscaNormal> aux = new Vector<buscaNormal>();
        ResultSet rs = null;
        String texto_consulta = null;
        
        texto_consulta = 
            "SELECT N.codigo, N.descricao, SUM(Desp.valor) AS gasto "
            + "FROM despesa Desp, natureza N, ("
                + "SELECT M.codigo FROM municipio M "
                + "WHERE M.descricao = '"+ descricao +"'"
            + ") Mun WHERE Mun.codigo = Desp.codigomunicipio "
            + "AND N.codigo = Desp.codigonatureza "
            + "GROUP BY N.codigo, N.descricao "
            + "ORDER BY gasto DESC";
        
        System.out.println(texto_consulta);
        
        try{
            conexao.st.execute(texto_consulta);
            rs = conexao.st.getResultSet();
            rs.next();
            
        }catch(SQLException e){
            return null;
        }
        
        
        return aux;        
    }
    
    
   
    
}
