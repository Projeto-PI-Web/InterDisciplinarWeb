package model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class Topic {

	private String id;
	private String nameTopic;
	private String playList;
	private List<Disciplina> disciplina;
	
	public Topic() {}
	
	public Topic(String nameTopic, String playList) {
		setNameTopic(nameTopic);
		setPlayList(playList);
	}
	
	public String getId(){
		return id;
	}
	
	public void setId(String id) {
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
	
	@Override
	public String toString() {
		return getNameTopic();
	}
	
}
