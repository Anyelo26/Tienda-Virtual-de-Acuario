package model;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import java.util.ArrayList;
import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Jaula {
		@PrimaryKey
		@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY) 
		private Long id;
		@Persistent private String email;
		@Persistent private ArrayList<Long> idPeces;
		@Persistent private Date fecha;
		
		

		public Jaula(String email, Long pez, boolean status, Date fecha) {
			this.idPeces=new ArrayList<Long>();
			this.idPeces.add(pez);
			this.email=email;
			this.fecha=fecha;
		}
		public void addPez(Long pez){
			this.idPeces.add(new Long(pez));
		}
		public ArrayList<Long> getPeces(){
			return this.idPeces;
		}
		public void deletePez(Long Pez){
			for(Long pez: idPeces){
				if(pez==Pez){
					idPeces.remove(pez);
				}
			}
		}
		public Long searchPez(Long pez){
			for(Long unidad:idPeces){
				if(unidad==pez){
					return unidad;
				}
			}
			return null;
		}
		
		public String getEmail(){
			return this.email;
		}
		public void setEmail(String email){
			this.email=email;
		}
		public Long getID(){
			return this.id;
		}
		public Date getFecha(){
			return fecha;
		}
		public void setFecha(Date fecha){
			this.fecha=fecha;
		}
		public void borrarPez(Long l){
			for(Long ep:idPeces){
				if(ep.equals(l)){
					idPeces.remove(ep);
					break;
				}
			}
		}
}
