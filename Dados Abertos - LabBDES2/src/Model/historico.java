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
        private String texto_consulta;

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

    /**
     * @return the texto_consulta
     */
    public String getTexto_consulta() {
        return texto_consulta;
    }

    /**
     * @param texto_consulta the texto_consulta to set
     */
    public void setTexto_consulta(String texto_consulta) {
        this.texto_consulta = texto_consulta;
    }

}
