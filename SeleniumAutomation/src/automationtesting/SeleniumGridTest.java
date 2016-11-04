package automationtesting;

import java.net.MalformedURLException;
import java.net.URL;

import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

public class SeleniumGridTest {

	public static void main(String[] args) throws MalformedURLException {
		// TODO Auto-generated method stub
		String rwdurl = "http://praneethamadapati:06ec4e1b-e0cb-4d1d-9fd5-52a00dad29f9@ondemand.saucelabs.com:80/wd/hub";
		String url = "http://www.google.com";
		DesiredCapabilities cap = DesiredCapabilities.chrome();
		cap.setPlatform(Platform.WIN10);
		cap.setBrowserName("chrome");
		WebDriver driver = new RemoteWebDriver(new URL(rwdurl),cap);
		driver.get(url);
		driver.manage().window().maximize();
		System.out.println(driver.getTitle());
		driver.close();
	}

}
