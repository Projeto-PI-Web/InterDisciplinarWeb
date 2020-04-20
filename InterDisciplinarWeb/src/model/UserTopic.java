package model;

import java.sql.Time;

public class UserTopic {

	private int id;
	private User user;
	private Topic topic;
	private Time tempo;
	private String historico;
	
	public UserTopic () {}
	
	public UserTopic (int id, User u, Topic t, Time tempo, String historico) {
		setId(id);
		setUser(u);
		setTopic(t);
		setTempo(tempo);
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
	public Topic getTopic() {
		return topic;
	}
	public void setTopic(Topic topic) {
		this.topic = topic;
	}
	public Time getTempo() {
		return tempo;
	}
	public void setTempo(Time tempo) {
		this.tempo = tempo;
	}
	public String getHistorico() {
		return historico;
	}
	public void setHistorico(String historico) {
		this.historico = historico;
	}
}
