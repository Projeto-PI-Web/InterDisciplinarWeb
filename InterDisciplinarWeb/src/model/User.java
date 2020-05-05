package model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class User {
	private int id;
	private String email;
	private String nome;
	private String senha;
	
	public User () {}
	
	public User (int id, String email, String nome, String senha) {
		setId(id);
		setEmail(email);
		setNome(nome);
		setSenha(senha);
	}
	
	public int getId(){
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	@Override
	public String toString() {
		return "{Id: " + getId() + ", Email: " + getEmail() + ", Nome: " + getNome() + 
				", Senha: " + getSenha() + ", Perfil: " + "}";
	}
}
