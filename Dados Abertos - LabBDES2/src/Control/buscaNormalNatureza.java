package Control;
import Model.buscaNormal;
import java.sql.*;
import java.util.ArrayList;

public class buscaNormalNatureza {
    private ArrayList<buscaNormal> resultado;
    private ConexaoBD conexao;
    
    public buscaNormalNatureza(ConexaoBD con){
        conexao = con;
    }

    public ArrayList<buscaNormal> getBuscaNormalPrograma(String descricao){
	    ArrayList<buscaNormal> resultado = new ArrayList<buscaNormal>();
	    ResultSet rs = null;
	    buscaNormal aux = null;
	    String texto_consulta =
		"SELECT P.codigo, P.descricaointernamunicipio, SUM(Desp.valor) AS gasto "
		+ "FROM despesa Desp, programa P, ("
		    	+ "SELECT M.codigo  FROM municipio M WHERE M.descricao = '" +descricao+ "'"
		+ ") Mun WHERE Mun.codigo = Desp.codigomunicipio "
		+ "AND P.codigo = Desp.codigoprograma "
		+ "GROUP BY P.codigo, P.descricaointernamunicipio "
		+ "ORDER BY gasto DESC;";

	    System.out.println(texto_consulta);

	    try{
		    conexao.st.execute(texto_consulta);
		    rs = conexao.st.getResultSet();
		    rs.next();
		    while(rs.isAfterLast() == false){
		    	aux = new buscaNormal();
			aux.setNaturezaCodigo(rs.getInt(1));
			aux.setNaturezaDescricao(rs.getString(2));
			aux.setGasto(rs.getDouble(3));
			resultado.add(aux);
			rs.next();
		    }
	    }catch(SQLException e){
		    System.out.println(e);
		    return null;
	    }
	    return resultado;
    }
  
    public ArrayList<buscaNormal> getBuscaNormalNatureza(String descricao){
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
			aux.setGasto(rs.getDouble(3));
			resultado.add(aux);
			rs.next();
		    }
	    }catch(SQLException e){
		    System.out.println(e);
		    return null;
	    }

	    return resultado;
    }
}
