package model;

import java.util.ArrayList;
import java.util.List;

public class Topic {

	private int id;
	private String nameTopic;
	private String playList;
	private Disciplina disciplina;
	
	public Topic() {}
	
	public Topic(int id, String nameTopic, String playList) {
		setId(id);
		setNameTopic(nameTopic);
		setPlayList(playList);
	}
	
	public int getId(){
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getNameTopic() {
		return nameTopic;
	}
	
	public void setNameTopic(String nameTopic) {
		this.nameTopic = nameTopic;
	}
	
	public String getPlayList() {
		return playList;
	}
	
	public void setPlayList(String playList) {
		this.playList = playList;
	}
	
	public Disciplina getDisciplina() {
		return disciplina;
	}
	
	public void setDisciplina(Disciplina disciplina) {
		this.disciplina = disciplina;
	}
	
	@Override
	public String toString() {
		return getNameTopic();
	}
	
}
