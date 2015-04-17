/*
Model para a seguinte consulta:

SELECT P.descricaointernamunicipio, N.descricao, SUM(D.valor) AS gasto
FROM despesa D, programa P, (
	SELECT codigo, descricao
	FROM natureza
	WHERE (descricao ILIKE <> OR descricao ILIKE <>)
) N
WHERE D.codigoprograma = P.codigo AND D.codigonatureza = N.codigo AND EXISTS (
	SELECT dataano
	FROM despesa
	WHERE dataano >= <> AND dataano <= <>
)
GROUP BY P.descricaointernamunicipio, N.descricao
HAVING SUM(D.valor) > <>
ORDER BY P.descricaointernamunicipio
 */
package Model;

/**
 *
 * @author floss
 */
public class buscaAvancada {
    private String  descricaoInternaMunicipio;
    private String  descricaoNatureza;
    private Float   gasto;

    public String getDescricaoInternaMunicipio() {
        return descricaoInternaMunicipio;
    }

    public void setDescricaoInternaMunicipio(String descricaoInternaMunicipio) {
        this.descricaoInternaMunicipio = descricaoInternaMunicipio;
    }

    public String getDescricaoNatureza() {
        return descricaoNatureza;
    }

    public void setDescricaoNatureza(String descricaoNatureza) {
        this.descricaoNatureza = descricaoNatureza;
    }

    public Float getGasto() {
        return gasto;
    }

    public void setGasto(Float gasto) {
        this.gasto = gasto;
    }
}
