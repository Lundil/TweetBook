package tools;
import java.util.ArrayList;

public class User{

	//informations persomnelles de l'utilisateur;
	private String lastName, firstName, mail, phoneNumber, date, place, address, login;
	//ID des groupes et des évènements auquels participe l'utilisateur
	private ArrayList<Integer> listGroup, listEvent;

	public User(String login){
		this.login = login;
	}
	public void setLastName(String name){
		this.lastName = name;
	}
	public void setFirstName(String name){
		this.firstName = name;
	}
	public void setMail(String name){
		this.mail = name;
	}
	public void setphoneNumber(String name){
		this.phoneNumber = name;
	}
	public void setDate(String name){
		this.date = name;
	}
	public void setPlace(String name){
		this.place = name;
	}
	public void setLogin(String name){
		this.login = name;
	}
	public String getLastName(){
		return this.lastName;
	}
	public String getFirstName(){
		return this.firstName;
	}
	public String getMail(){
		return this.mail;
	}
	public String getPhoneNumber(){
		return this.phoneNumber;
	}
	public String getDate(){
		return this.date;
	}
	public String getPlace(){
		return this.place;
	}
	public String getAddress(){
		return this.address;
	}
	public String getLogin(){
		return this.login;
	}
}