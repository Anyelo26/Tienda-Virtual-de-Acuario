package model;


import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;

import javax.servlet.http.HttpServletRequest;


import model.Access;
import model.Account;

public final class ControlaMenu {
	public static String construyeMenu(PersistenceManager pm,com.google.appengine.api.users.User usuarioGoogle,
			HttpServletRequest request){
		String menu="";
		if(usuarioGoogle!=null){
			
			String query = "select from "+ Account.class.getName()+" where correo=='"+usuarioGoogle.getEmail()+"'";
			System.out.println(query);
			
			List<Account> usuarios = (List<Account>)pm.newQuery(query).execute();
			if(!usuarios.isEmpty()){
				
				Long idRole= usuarios.get(0).getIdRole();
				
				String query2 = "select from "+ Access.class.getName()+" where idRole=="+idRole;
				System.out.println(query2);
				List<Access> accesos = (List<Access>) pm.newQuery(query2).execute();
				System.out.println(accesos);
				
				ArrayList<String> menuElements= new ArrayList<String>();
				
				for (int i = 0; i < accesos.size(); i++) {
					String resource=accesos.get(i).getUrl();
					if(resource.indexOf("Display")!=-1){
						
						
						menuElements.add(resource.substring(resource.indexOf("/")+1, resource.lastIndexOf("/")));
						
					}		
					
				}			
				ArrayList<String> resource= new ArrayList<String>();
				for (int i = 0; i < menuElements.size(); i++) {
					menu+="<li class='presentation'><a href='/"+menuElements.get(i)+"/Display'>"+menuElements.get(i)+"</a></li>";
				}
			}
		}
		
		
		request.setAttribute("menu",menu);
		//System.out.println(menu+"aaaaaaaa");
		return menu;
		
	}

}