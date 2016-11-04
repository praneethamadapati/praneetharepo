package automationtesting;

import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.firefox.internal.ProfilesIni;

public class FirefoxProfileTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ProfilesIni profile = new ProfilesIni();
		FirefoxProfile ffp = profile.getProfile("nlsinc");
		
	}

}
