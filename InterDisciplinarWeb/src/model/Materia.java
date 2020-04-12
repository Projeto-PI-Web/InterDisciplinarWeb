package model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="materia")
public class Materia {

	@Id //informa que a variavle ser� o id no banco
	@Column(name="materia_id") //name == nome no banco
	@GeneratedValue(strategy = GenerationType.IDENTITY) //informa que a variavle ser� o id no banco
	private String id;
	@Column(name="nome_materia")
	private String nomeMateria;
	@Column(name="ativo")
	private boolean ativo;
	
	public Materia() {}
	
	public Materia(String id, String nameMateria) {
		setId(id);
		setNameMateria(nameMateria);
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
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
		Materia other = (Materia) obj;
		if (nomeMateria == null) {
			if (other.nomeMateria != null) return false;
		} else if (!nomeMateria.equals(other.nomeMateria)) return false;
		if (id == null) {
			if (other.id != null) return false;
		} else if (!id.equals(other.id)) return false;
		if (id != other.id) return false;
		return true;
	}
}
