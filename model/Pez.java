package model;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
@PersistenceCapable(identityType = IdentityType.APPLICATION,detachable="true")
public class Pez {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY) private Long id;
	@Persistent private String Nombre;
	@Persistent private String Orden;
	@Persistent private String Familia;
	@Persistent private String Genero;
	@Persistent private String Precio;
	@Persistent private String Stock;
	@Persistent private String estado;
	public Pez(String nombre, String orden, String familia, String genero, String precio,
			String stock) {
		this.Nombre = nombre;
		this.Orden = orden;
		this.Familia = familia;
		this.Genero = genero;
		this.Precio = precio;
		this.Stock = stock;
		this.estado="true";
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getOrden() {
		return Orden;
	}
	public void setOrden(String orden) {
		Orden = orden;
	}
	public String getFamilia() {
		return Familia;
	}
	public void setFamilia(String familia) {
		Familia = familia;
	}
	public String getGenero() {
		return Genero;
	}
	public void setGenero(String genero) {
		Genero = genero;
	}
	public String getPrecio() {
		return Precio;
	}
	public void setPrecio(String precio) {
		Precio = precio;
	}
	public String getStock() {
		return Stock;
	}
	public void setStock(String stock) {
		Stock = stock;
	}

}