package tools;
import java.util.ArrayList;

public class Event{

	//informations sur l'évènement
	private String title, description, place, date, creator;
	//login des participants (utilisateurs)
	private ArrayList<String> listUsers;

	public Event(String title, String description, String place, String date, String creator){
		this.title = title;
		this.description = description;
		this.place = place;
		this.date = date;
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
	public void setDescription(String name){
		this.description = name;
	}
	public void setDate(String name){
		this.date = name;
	}
	public void setPlace(String name){
		this.place = name;
	}
	public void setCreator(String name){
		this.creator = name;
	}

	//GET ---------------------------------------------------------------
	public String getTitle(){
		return this.title;
	}
	public String getDescription(){
		return this.description;
	}
	public String getDate(){
		return this.date;
	}
	public String getPlace(){
		return this.place;
	}
	public String getCreator(){
		return this.creator;
	}
	public ArrayList<String> getListUser(){
		return this.listUsers;
	}
}