/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author floss
 */
public class consultaBasica {
	private ConexaoBD conexao;

	public consultaBasica(ConexaoBD con){
		conexao = con;
	}
	
	public ArrayList<String> getMunicipio() {
		ArrayList<String> resultado = new ArrayList<String>();
		ResultSet rs = null;
		String aux = null;
		String texto_consulta
			= "SELECT descricao FROM municipio";

		System.out.println(texto_consulta);

		try {
			conexao.st.execute(texto_consulta);
			rs = conexao.st.getResultSet();
			rs.next();
			while (rs.isAfterLast() == false) {
				aux = new String();
				aux = rs.getString(1);
				resultado.add(aux);
				rs.next();
			}
		} catch (SQLException e) {
			System.out.println(e);
			return null;
		}
		return resultado;
	}

}
