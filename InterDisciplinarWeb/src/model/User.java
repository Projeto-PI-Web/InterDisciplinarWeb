package model;

public class User {
	private int id;
	private String email;
	private String nome;
	private String senha;
	private Perfil perfil;
	private String token;
	
	public User () {}
	
	
	public User (int id, String email, String nome, String senha, Perfil perfil) {
		setId(id);
		setEmail(email);
		setNome(nome);
		setSenha(senha);
		setPerfil(perfil);
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
	public Perfil getPerfil() {
		return perfil;
	}

	public void setPerfil(Perfil perfil) {
		this.perfil = perfil;
	}

	public String getToken() {
		return token;
	}


	public void setToken(String token) {
		this.token = token;
	}
	
	@Override
	public String toString() {
		return "{Id: " + getId() + ", Email: " + getEmail() + ", Nome: " + getNome() + 
				", Senha: " + getSenha() + ", Perfil: " + getPerfil()+ ", Token:" + getToken() +"}";
	}



}
