/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.buscaAvancada;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class buscaAvancadaRes{
    private ArrayList<buscaAvancada> resultado;
    private ConexaoBD conexao;
    
    public buscaAvancadaRes(ConexaoBD con){
        conexao = con;
    }

    public ArrayList<buscaAvancada> getBuscaAvancada(String descricao1, String descricao2, String cidade, Integer anoInicio, Integer anoFim, Integer valorInicial, Integer valorFinal){
	    ArrayList<buscaAvancada> resultado = new ArrayList<buscaAvancada>();
	    ResultSet rs = null;
	    buscaAvancada aux = null;
                    String texto_consulta = 
                    "SELECT * FROM CONSULTA_AVANCADA('%"+descricao1+"%','%"+descricao2+"%','"+cidade+"',"+anoInicio+","+anoFim+","+valorInicial+","+valorFinal+",'CONSULTA AVANÇADA','"+descricao1+" "+descricao2+" "+cidade+" "+anoInicio+" "+anoFim+" "+valorInicial+" "+valorFinal+"');";
	    System.out.println(texto_consulta);

	    try{
		    conexao.st.execute(texto_consulta);
		    rs = conexao.st.getResultSet();
		    rs.next();
		    while(rs.isAfterLast() == false){
		    	aux = new buscaAvancada();
			aux.setDescricaoInternaMunicipio(rs.getString(1));
                        aux.setDescricaoNatureza(rs.getString(2));
                        aux.setGasto(Float.parseFloat(rs.getString(3)));
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
