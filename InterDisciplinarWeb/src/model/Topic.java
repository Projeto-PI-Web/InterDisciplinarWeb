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

	@Id
	@Column(name="topic_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	@Column(name="nome_topico")
	private String nameTopic;
	@Column(name="playlist")
	private String playList;
	@ManyToOne
	@Column(name="materia_topic")
	@JoinColumn(name="topic_materia_id", referencedColumnName = "materia_id")
	private List<Materia> materia;
	
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
