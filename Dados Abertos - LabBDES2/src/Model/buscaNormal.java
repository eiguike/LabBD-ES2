/*
Model utilizado para esta consulta:

SELECT N.codigo, N.descricao, SUM(Desp.valor) AS gasto
FROM despesa Desp, natureza N, (
	SELECT M.codigo 
	FROM municipio M
	WHERE M.descricao = ''
)Mun
WHERE Mun.codigo = Desp.codigomunicipio AND N.codigo = Desp.codigonatureza
GROUP BY N.codigo, N.descricao
ORDER BY gasto DESC;


SELECT P.codigo, P.descricaointernamunicipio, SUM(Desp.valor) AS gasto
FROM despesa Desp, programa P, (
	SELECT M.codigo 
	FROM municipio M
	WHERE M.descricao = ''
)Mun
WHERE Mun.codigo = Desp.codigomunicipio AND P.codigo = Desp.codigoprograma
GROUP BY P.codigo, P.descricaointernamunicipio
ORDER BY gasto DESC;

 */
package Model;

/**
 *
 * @author floss
 */
public class buscaNormal {
    private Integer codigo;
    private String descricao;
    private String gasto;    
    
    public Integer getNaturezaCodigo() {
        return codigo;
    }

    public void setNaturezaCodigo(Integer naturezaCodigo) {
        this.codigo = naturezaCodigo;
    }

    public String getNaturezaDescricao() {
        return descricao;
    }

    public void setNaturezaDescricao(String naturezaDescricao) {
        this.descricao = naturezaDescricao;
    }

    public String getGasto() {
        return gasto;
    }

    public void setGasto(String gasto) {
        this.gasto = gasto;
    }
}
