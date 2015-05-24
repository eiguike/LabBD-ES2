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
    
    buscaAvancadaRes(ConexaoBD con){
        conexao = con;
    }

    ArrayList<buscaAvancada> getBuscaAvancada(String descricao1, String descricao2, Date dataInicio, Date dataFim, Integer valorBase){
	    ArrayList<buscaAvancada> resultado = new ArrayList<buscaAvancada>();
	    ResultSet rs = null;
	    buscaAvancada aux = null;
	    String texto_consulta = "" +
                    "SELECT P.descricaointernamunicipio, N.descricao, SUM(D.valor) AS gasto\n" +
                    "FROM despesa D, programa P, (\n" +
                    "	SELECT codigo, descricao\n" +
                    "	FROM natureza\n" +
                    "	WHERE (descricao ILIKE "+ descricao1 +" OR descricao ILIKE "+ descricao2 +")\n" +
                    ") N\n" +
                    "WHERE D.codigoprograma = P.codigo AND D.codigonatureza = N.codigo AND EXISTS (\n" +
                    "	SELECT dataano\n" +
                    "	FROM despesa\n" +
                    "	WHERE dataano >= "+ dataInicio +" AND dataano <= "+ dataFim +"\n" +
                    ")\n" +
                    "GROUP BY P.descricaointernamunicipio, N.descricao\n" +
                    "HAVING SUM(D.valor) > "+ valorBase +"\n" +
                    "ORDER BY P.descricaointernamunicipi";

	    System.out.println(texto_consulta);

	    try{
		    conexao.st.execute(texto_consulta);
		    rs = conexao.st.getResultSet();
		    rs.next();
		    while(rs.isAfterLast() == false){
		    	aux = new buscaAvancada();
			//adicionar aqui os sets da classe buscaAvancada
			resultado.add(aux);
		    }
	    }catch(SQLException e){
		    System.out.println(e);
		    return null;
	    }
	    return resultado;
    }
  
}
