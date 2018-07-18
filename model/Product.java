package model;

import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Product {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY) private Long id;
	@Persistent private String nombre;
	@Persistent private double precio;
	@Persistent private boolean status;
	@Persistent private int stok;
	@Persistent private Date fechaCreacion;
	public Product( String nombre, double precio, int stok) {
		this.nombre = nombre;
		this.precio = precio;
		this.status = true;
		this.stok = stok;
		this.fechaCreacion= new Date();
	}
	public Date getFecha(){
		return fechaCreacion;
	}
	
	public Long getId() {
		return id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public boolean getStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public int getStok() {
		return stok;
	}
	public void setStok(int stok) {
		this.stok= stok;
	}
	
	
	
}