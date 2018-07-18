package model;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
import java.lang.Long;
@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Recomendacion {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY) private Long id;
	@Persistent private String titulo;
	@Persistent private String informacion;
	@Persistent private String exist;
	@Persistent private String imagen;

	public Recomendacion(String titulo,String informacion,String imagen) {
		this.titulo=titulo;
		this.informacion=informacion;
		this.imagen=imagen;
		this.exist="recomendacion";
	}
	public Recomendacion(){}
	public String getExist(){
		return this.exist;
	}
	public Long getID() {
		return id;
	}
	public void setID(Long id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getInformacion() {
		return informacion;
	}
	public void setInformacion(String informacion) {
		this.informacion = informacion;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
}