package tools;
import java.util.ArrayList;

public class Group{

	//informations sur l'évènement
	private String title, creator;
	//login des participants (utilisateurs)
	private ArrayList<String> listUsers;

	public Group(String title, String creator){
		this.title = title;
		this.creator = creator;
		this.listUsers = new ArrayList<String>();
		this.listUsers.add(creator);
	}
	public void addUser(String name){
		if(!this.listUsers.contains(name))
			this.listUsers.add(name);
	}
	public void removeUser(String name){
		if(this.listUsers.contains(name) && !creator.equals(name))
			this.listUsers.remove(name);
	}


	//SET ---------------------------------------------------------------
	public void setTitle(String name){
		this.title = name;
	}
	public void setCreator(String name){
		this.creator = name;
	}

	//GET ---------------------------------------------------------------
	public String getTitle(){
		return this.title;
	}
	public String getCreator(){
		return this.creator;
	}
	public ArrayList<String> getListUser(){
		return this.listUsers;
	}
}