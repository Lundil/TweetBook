import java.security.NoSuchAlgorithmException;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;
import javax.crypto.Cipher;

public class Password {

	private String password;
	
	public Password(String password){
		this.password = password;
	}

	public String encryptPassword(String key){
		try{
			SecretKeySpec clef = new SecretKeySpec(key.getBytes("ISO-8859-2"),"Blowfish");
			Cipher cipher = Cipher.getInstance("Blowfish");
			cipher.init(Cipher.ENCRYPT_MODE, clef);
			return new String(cipher.doFinal(password.getBytes()));
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}