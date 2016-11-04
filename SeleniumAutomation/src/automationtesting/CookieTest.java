package automationtesting;

import java.util.Set;

import org.openqa.selenium.Cookie;
import org.openqa.selenium.WebDriver;

public class CookieTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String url = "https://www.infosys.com/";
		WebDriver driver = BaseBrowser.getBrowser("chrome", url);
		driver.manage().window().maximize();
		driver.manage().addCookie(new Cookie("greeting","hello"));
		Set<Cookie> cookies = driver.manage().getCookies();
		System.out.println(cookies);
		driver.manage().deleteCookieNamed("=testcookie");
		driver.manage().addCookie(new Cookie("Praneetha", "Madapati.co.com"));
		driver.manage().deleteAllCookies();
		Set<Cookie> cookies1 = driver.manage().getCookies();
		System.out.println(cookies1);
	}

}
