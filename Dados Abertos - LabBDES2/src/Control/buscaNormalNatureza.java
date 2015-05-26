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

    public ArrayList<buscaNormal> getBuscaNormalPrograma(String equipamento, String municipio){
	    ArrayList<buscaNormal> resultado = new ArrayList<buscaNormal>();
	    ResultSet rs = null;
	    buscaNormal aux = null;

	    String texto_consulta;
	    if(equipamento == null){
		    texto_consulta = "SELECT * FROM CONSULTA_SIMPLES_PROGRAMA ('%%', '"+municipio+"')";
	    }else{
		    texto_consulta = "SELECT * FROM CONSULTA_SIMPLES_PROGRAMA('%%', '"+municipio+"')";
	    }

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
  
    public ArrayList<buscaNormal> getBuscaNormalNatureza(String natureza, String municipio){
	    ArrayList<buscaNormal> resultado = new ArrayList<buscaNormal>();
	    ResultSet rs = null;
	    buscaNormal aux = null;
	    
	    String texto_consulta;
	    if (natureza == null){
		    texto_consulta = "SELECT * FROM CONSULTA_SIMPLES_NATUREZA ('%%', '"+municipio+"')";
	    }else{
		    texto_consulta = "SELECT * FROM CONSULTA_SIMPLES_NATUREZA ('%"+natureza+"%', '"+municipio+"')";
	    }


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
