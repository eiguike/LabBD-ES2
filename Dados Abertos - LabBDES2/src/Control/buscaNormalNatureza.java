package Control;
import Model.buscaNormal;
import java.sql.*;
import java.util.ArrayList;

public class buscaNormalNatureza {
    private ConexaoBD conexao;
    
    buscaNormalNatureza(ConexaoBD con){
        conexao = con;
    }
  
    ArrayList<buscaNormal> getBuscaNormalNatureza(String descricao){
	    ArrayList<buscaNormal> resultado = new ArrayList<buscaNormal>();
	    ResultSet rs = null;
	    buscaNormal aux = null;
	    String texto_consulta =
		"SELECT N.codigo, N.descricao, SUM(Desp.valor) AS gasto "
		+ "FROM despesa Desp, natureza N, ("
		    + "SELECT M.codigo "
		    + "FROM municipio M "
		    + "WHERE M.descricao = '"+ descricao +"') Mun "
		+ "WHERE Mun.codigo = Desp.codigomunicipio AND "
		+ "N.codigo = Desp.codigonatureza "
		+ "GROUP BY N.codigo, N.descricao "
		+ "ORDER BY gasto DESC";

	    System.out.println(texto_consulta);

	    try{
		    conexao.st.execute(texto_consulta);
		    rs = conexao.st.getResultSet();
		    rs.next();
		    while(rs.isAfterLast() == false){
		    	aux = new buscaNormal();
			aux.setNaturezaCodigo(rs.getInt(1));
			aux.setNaturezaDescricao(rs.getString(2));
			aux.setGasto(rs.getFloat(3));
			resultado.add(aux);
		    }
	    }catch(SQLException e){
		    System.out.println(e);
		    return null;
	    }

	    return resultado;
    }
}
