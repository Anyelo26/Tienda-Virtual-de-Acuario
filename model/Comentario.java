package model;
import java.util.HashMap;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Comentario {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY) private Long id;
	@Persistent String comentario;
	@Persistent String correo;
	@Persistent private Long idPez;
	public Comentario(String comentario,String correo ,Long idPez){
		this.comentario=comentario;
		this.correo=correo;
		this.idPez=idPez;
	}
	public Comentario(String comentario,String correo){
		this.comentario=comentario;
		this.correo=correo;
	}
	public Comentario(){}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
}
