package model;

import java.sql.Time;

public class UserDisc {

	private int id;
	private User user;
	private Disciplina disc;
	private Time tempo;
	private boolean ativo;
	private String historico;
	
	public UserDisc() {}
	
	public UserDisc(int id, User u, Disciplina disc, Time tempo, boolean ativo, String historico) {
		setId(id);
		setUser(u);
		setDisc(disc);
		setTempo(tempo);
		setAtivo(ativo);
		setHistorico(historico);
	}
	
	public int getId(){
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
	public Disciplina getDisc() {
		return disc;
	}
	public void setDisc(Disciplina disc) {
		this.disc = disc;
	}
	public Time getTempo() {
		return tempo;
	}
	public void setTempo(Time tempo) {
		this.tempo = tempo;
	}
	public Boolean getAtivo() {
		return ativo;
	}
	public void setAtivo(Boolean ativo) {
		this.ativo = ativo;
	}
	public String getHistorico() {
		return historico;
	}
	public void setHistorico(String historico) {
		this.historico = historico;
	}
}
