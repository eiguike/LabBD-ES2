
package Model;

import java.sql.Date;

/**
 *
 * @author Gabs
 */
public class historico {


   private String data_hora;
   
   private String tipo_consulta;

    public String getData_hora() {
        return data_hora;
    }

    public void setData_hora(String data_hora) {
        this.data_hora = data_hora;
    }

    public String getTipo_consulta() {
        return tipo_consulta;
    }

    public void setTipo_consulta(String string) {
        this.tipo_consulta = string;
    }
   
    
}
