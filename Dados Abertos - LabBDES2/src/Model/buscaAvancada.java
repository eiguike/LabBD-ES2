package Model;

/**
 *
 * @author floss
 */
public class buscaAvancada {

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getNatureza1() {
		return natureza1;
	}

	public void setNatureza1(String natureza1) {
		this.natureza1 = natureza1;
	}

	public String getNatureza2() {
		return natureza2;
	}

	public void setNatureza2(String natureza2) {
		this.natureza2 = natureza2;
	}

	public Integer getAnoInicio() {
		return anoInicio;
	}

	public void setAnoInicio(Integer anoInicio) {
		this.anoInicio = anoInicio;
	}

	public Integer getAnoFim() {
		return anoFim;
	}

	public void setAnoFim(Integer anoFim) {
		this.anoFim = anoFim;
	}

	public Integer getValorInicio() {
		return valorInicio;
	}

	public void setValorInicio(Integer valorInicio) {
		this.valorInicio = valorInicio;
	}

	public Integer getValorFim() {
		return valorFim;
	}

	public void setValorFim(Integer valorFim) {
		this.valorFim = valorFim;
	}
	private String natureza2;
	private Integer anoInicio;
	private Integer anoFim;
	private Integer valorInicio;
	private String cidade;
	private String natureza1;
	private Integer valorFim;

	private String descricaoInternaMunicipio;
	private String descricaoNatureza;
	private String gasto;

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

	public String getGasto() {
		return gasto;
	}

	public void setGasto(String gasto) {
		this.gasto = gasto;
	}
}
