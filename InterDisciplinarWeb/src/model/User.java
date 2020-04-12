package model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class User {

	@Id
	@Column(name="user_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	@Column(name="email_user")
	private String email;
	@Column(name="nome_user")
	private String nome;
	@Column(name="senha_user")
	private String senha;
	@Column(name="telefone_user")
	private String telefone;
	
	public User () {}
	
	public User (/*String apelido,*/ String email, String nome, String senha) {
		//setApelido(apelido);
		setEmail(email);
		setNome(nome);
		setSenha(senha);
	}
	
	/*public String getApelido() {
		return apelido;
	}
	public void setApelido(String apelido) {
		this.apelido = apelido;
	}*/
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
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	@Override
	public String toString() {
		return this.getNome();
	}
}