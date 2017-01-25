package tools;
import java.util.ArrayList;
import javax.servlet.*;
import java.sql.*;
import javax.naming.*;
import javax.sql.*;
import javax.servlet.http.*;

/** manipulation de l'objet utilisateur dans la base de données */

public class ModelUser{

	protected ArrayList<User> list = new ArrayList<User>();
	protected ResultSet result;
	protected PreparedStatement statement;
	protected Connection connection = null;

	public void initialize(){
		try{
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource) envCtx.lookup("database");
			connection = ds.getConnection();

		} catch (Exception e){
			e.printStackTrace();
		}
	}

	public void execute(String login, String password){
		try{
			statement = connection.prepareStatement("select lastName, firstName from user where (login=? and password=?) or (mail=? and password=?");
			statement.setString(1,login);
			statement.setString(2,password);
			statement.setString(3,login);
			statement.setString(4,password);
			result = statement.executeQuery();

			while(result.next()){
				User user = new User(login);
				user.setLastName(result.getString("lastName"));
				user.setFirstName(result.getString("firstName"));
				list.add(user);
			}
			result.close();
			statement.close();
			connection.close();
		} catch (Exception e){
			e.printStackTrace();
		} finally{
			try{
				connection.close();
			} catch(Exception e){
				e.printStackTrace();
			}
		}
	}

	public void create(String firstName, String lastName, String mail, String phoneNumber, String date, String place, String address, String login, String password){
		try{
			statement = connection.prepareStatement("insert into user(lastName, firstName, email, phoneNumber, birthDay, birthPlace, login, password) values(?,?,?,?,?,?,?,?,?)");
			statement.setString(1,lastName);
			statement.setString(2,firstName);
			statement.setString(3,mail);
			statement.setString(4,phoneNumber);
			statement.setString(5,date);
			statement.setString(6,place);
			statement.setString(7,address);
			statement.setString(8,login);
			statement.setString(9,password);

			statement.executeUpdate();
			result.close();
			statement.close();
			connection.close();
		} catch (Exception e){
			e.printStackTrace();
		} finally{
			try{
				connection.close();
			} catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	
	public User get(int i){
		return list.get(i);
	}
}