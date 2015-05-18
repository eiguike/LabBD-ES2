/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.buscaAvancada;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class buscaAvancadaRes{
    private ArrayList<buscaAvancada> resultado;
    private ConexaoBD conexao;
    
    buscaAvancadaRes(ConexaoBD con){
        conexao = con;
    }

    ArrayList<buscaAvancada> getBuscaAvancada(/*preencher aqui com os dados necessarios*/){
	    ArrayList<buscaAvancada> resultado = new ArrayList<buscaAvancada>();
	    ResultSet rs = null;
	    buscaAvancada aux = null;
	    String texto_consulta = "batata" //Completar com a consulta
		;

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
