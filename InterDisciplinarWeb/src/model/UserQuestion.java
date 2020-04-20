package model;

import java.sql.Time;

public class UserQuestion {

	private int id;
	private User user;
	private Question question;
	private Time tempo;
	private String resposta;
	private String historico;
	
	public UserQuestion () {}
	
	public UserQuestion (int id, User u, Question q, Time tempo, String resposta, String historico) {
		setId(id);
		setUser(u);
		setQuestion(q);
		setTempo(tempo);
		setResposta(resposta);
		setHistorico(historico);
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	public Time getTempo() {
		return tempo;
	}
	public void setTempo(Time tempo) {
		this.tempo = tempo;
	}
	public String getResposta() {
		return resposta;
	}
	public void setResposta(String resposta) {
		this.resposta = resposta;
	}
	public String getHistorico() {
		return historico;
	}
	public void setHistorico(String historico) {
		this.historico = historico;
	}
}
