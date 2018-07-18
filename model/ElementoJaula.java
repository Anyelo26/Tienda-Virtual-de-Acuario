package model;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import java.util.ArrayList;
import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class ElementoJaula {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY) 
	private Long id;
	@Persistent private Long pez;
	@Persistent private boolean status;
	@Persistent private Date fecha;
	@Persistent private String exist;
	

	public ElementoJaula(Long pez,boolean status,Date fecha) {
		this.pez=pez;
		this.status=status;
		this.fecha=fecha;
		this.exist="ElementoJaula";
	}
	
	public Long getPez() {
		return pez;
	}

	public void setPez(Long pez) {
		this.pez=pez;
	}

	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getExist() {
		return exist;
	}
	
	public Long getID(){
		return this.id;
	}
}
