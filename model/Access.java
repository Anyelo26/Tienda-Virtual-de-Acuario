package model;

import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Access {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY) private Long id;
	@Persistent private Long idRole;
	@Persistent private Long idUrl;
	@Persistent private boolean status;
	@Persistent private Date fecha;
	@Persistent private String rol;
	@Persistent private String url;
	
	
	
	public Access( Long idRole, Long idUrl, Date fecha,String rol,String url) {
		this.idRole = idRole;
		this.idUrl = idUrl;
		this.status =true;
		this.fecha = fecha;
		this.rol=rol;
		this.url=url;
	}
	public String getRol() {
		return this.rol;
	}
	public String getUrl() {
		return this.url;
	}
	public Long getId() {
		return id;
	}
	public Long getIdRole() {
		return idRole;
	}
	public void setIdRole(Long idRole) {
		this.idRole = idRole;
	}
	public Long getIdUrl() {
		return idUrl;
	}
	public void setIdUrl(Long idUrl) {
		this.idUrl = idUrl;
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
	
	
}
