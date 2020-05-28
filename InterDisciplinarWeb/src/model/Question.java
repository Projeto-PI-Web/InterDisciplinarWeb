package model;

public class Question {
	private int id;
	private String enunciado;
	private String texto_apoio;
	private String peso;
	private String alternativaCorreta;
	private String alternativaA;
	private String alternativaB;
	private String alternativaC;
	private String alternativaD;
	private String alternativaE;
	
	public Question() {}
	
	public Question(int id, String enunciado, String texto_apoio, String peso, String alternativaCorreta, 
					String alternativaA, String alternativaB, String alternativaC, 
					String alternativaD, String alternativaE) {
		setId(id);
		setEnunciado(enunciado);
		setTexto_apoio(texto_apoio);
		setPeso(peso);
		setAlternativaCorreta(alternativaCorreta);
		setAlternativaA(alternativaA);
		setAlternativaB(alternativaB);
		setAlternativaC(alternativaC);
		setAlternativaD(alternativaD);
		setAlternativaE(alternativaE);
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getEnunciado() {
		return enunciado;
	}
	public void setEnunciado(String enunciado) {
		this.enunciado = enunciado;
	}
	public String getPeso() {
		return peso;
	}
	public void setPeso(String peso) {
		this.peso = peso;
	}
	public String getAlternativaCorreta() {
		return alternativaCorreta;
	}
	public void setAlternativaCorreta(String alternativaCorreta) {
		this.alternativaCorreta = alternativaCorreta;
	}
	public String getAlternativaA() {
		return alternativaA;
	}
	public void setAlternativaA(String alternativaA) {
		this.alternativaA = alternativaA;
	}
	public String getAlternativaB() {
		return alternativaB;
	}
	public void setAlternativaB(String alternativaB) {
		this.alternativaB = alternativaB;
	}
	public String getAlternativaC() {
		return alternativaC;
	}
	public void setAlternativaC(String alternativaC) {
		this.alternativaC = alternativaC;
	}
	public String getAlternativaD() {
		return alternativaD;
	}
	public void setAlternativaD(String alternativaD) {
		this.alternativaD = alternativaD;
	}
	public String getAlternativaE() {
		return alternativaE;
	}
	public void setAlternativaE(String alternativaE) {
		this.alternativaE = alternativaE;
	}

	public String getTexto_apoio() {
		return texto_apoio;
	}

	public void setTexto_apoio(String texto_apoio) {
		this.texto_apoio = texto_apoio;
	}
	@Override
	public String toString() {
		return getTexto_apoio();
	}

}
