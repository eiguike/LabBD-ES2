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
    private Integer naturezaCodigo;
    private String naturezaDescricao;
    private Float gasto;    
    
    public Integer getNaturezaCodigo() {
        return naturezaCodigo;
    }

    public void setNaturezaCodigo(Integer naturezaCodigo) {
        this.naturezaCodigo = naturezaCodigo;
    }

    public String getNaturezaDescricao() {
        return naturezaDescricao;
    }

    public void setNaturezaDescricao(String naturezaDescricao) {
        this.naturezaDescricao = naturezaDescricao;
    }

    public Float getGasto() {
        return gasto;
    }

    public void setGasto(Float gasto) {
        this.gasto = gasto;
    }
}
