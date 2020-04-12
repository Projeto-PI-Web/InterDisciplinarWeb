package model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Question {

	@Id
	@Column(name="question_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	@Column(name="enunciado")
	private String enunciado;
	@Column(name="peso")
	private String peso;
	@Column(name="alternativa_correta")
	private String alternativaCorreta;
	@Column(name="alternativa_a")
	private String alternativaA;
	@Column(name="alternativa_b")
	private String alternativaB;
	@Column(name="alternativa_c")
	private String alternativaC;
	@Column(name="alternativa_d")
	private String alternativaD;
	@Column(name="alternativa_e")
	private String alternativaE;
	
	public Question() {}
	
	public Question(String enunciado, String peso, String alternativaCorreta, 
					String alternativaA, String alternativaB, String alternativaC, 
					String alternativaD, String alternativaE) {
		setEnunciado(enunciado);
		setPeso(peso);
		setAlternativaCorreta(alternativaCorreta);
		setAlternativaA(alternativaA);
		setAlternativaB(alternativaB);
		setAlternativaC(alternativaC);
		setAlternativaD(alternativaD);
		setAlternativaE(alternativaE);
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
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
	
	@Override
	public String toString() {
		return getAlternativaCorreta();
	}
}
