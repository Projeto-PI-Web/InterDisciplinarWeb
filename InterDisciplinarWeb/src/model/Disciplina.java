package model;

public class Disciplina {
	private int id;
	private String nomeMateria;
	private boolean ativo;
	
	public Disciplina() {}
	
	public Disciplina(int id, String nameMateria) {
		setId(id);
		setNameMateria(nameMateria);
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNameMateria() {
		return nomeMateria;
	}

	public void setNameMateria(String nomeMateria) {
		this.nomeMateria = nomeMateria;
	}
	
	@Override
	public String toString() {
		return getNameMateria();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj) return true;
		if (obj == null) return false;
		if (getClass() != obj.getClass()) return false;
		Disciplina other = (Disciplina) obj;
		if (nomeMateria == null) {
			if (other.nomeMateria != null) return false;
		} else if (!nomeMateria.equals(other.nomeMateria)) return false;
		if (id == 0) {
			if (other.id != 0) return false;
		} else if (id != (other.id)) return false;
		if (id != other.id) return false;
		return true;
	}
}