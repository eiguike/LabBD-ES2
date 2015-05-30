package Model;

import java.sql.Date;

/**
 *
 * @author Gabs
 */
public class historico {

	private String data;
	private String hora;
	private String tipo_consulta;

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getTipo_consulta() {
		return tipo_consulta;
	}

	public void setTipo_consulta(String string) {
		this.tipo_consulta = string;
	}

}
