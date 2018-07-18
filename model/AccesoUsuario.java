package model;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserServiceFactory;

public final class AccesoUsuario {
	public static boolean dameAcceso(String recurso,User usuario,PersistenceManager pm,
			ServletContext sc,HttpServletRequest request, HttpServletResponse response)
					throws ServletException,IOException{
		//------------------------------Menu
		ControlaMenu.construyeMenu(pm, UserServiceFactory.getUserService().getCurrentUser(), request);
		if(usuario==null){
			RequestDispatcher rp= sc.getRequestDispatcher("/WEB-INF/JSPFiles/UserDenied/NoLogin.jsp");
			rp.forward(request, response);
		}else{
			String queryUsuario="select from "+Account.class.getName()+" where correo=='"+usuario.getEmail()+"'"
					+ " & status==true";
			List<Account> cuentas= (List<Account>)pm.newQuery(queryUsuario).execute();
			
			if(cuentas.isEmpty()){
				RequestDispatcher rp= sc.getRequestDispatcher("/WEB-INF/JSPFiles/UserDenied/NoRegistrado.jsp");
				rp.forward(request, response);
			}else{
				System.out.println(request.getServletPath());
				String queryRecurso="select from "+Resource.class.getName()+" where url=='"+request.getServletPath()+"'"
						+ " & status==true";
				
				List<Resource> recursos= (List<Resource>)pm.newQuery(queryRecurso).execute();
				if(recursos.isEmpty()){
					RequestDispatcher rp= sc.getRequestDispatcher("/WEB-INF/JSPFiles/UserDenied/NoRecurso.jsp");
					rp.forward(request, response);
				}else{
					
					String queryAcceso= "select from "+Access.class.getName()+" where idRole=="+cuentas.get(0).getIdRole()
							+" & idUrl=="+recursos.get(0).getId() +" &status ==true";
					System.out.println(queryAcceso);
					List<Access> accesos= (List<Access>)pm.newQuery(queryAcceso).execute();
					if(accesos.isEmpty()){
						RequestDispatcher rp= sc.getRequestDispatcher("/WEB-INF/JSPFiles/UserDenied/NoPermitido.jsp");
						rp.forward(request, response);
					}else{
						
						return true;
					}
					
				}
			}
					
		}
		return false;
	}
}
