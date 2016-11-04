package automationtesting;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

public class BaseClass {
	static WebDriver driver = null;
	static String rwdurl = "http://praneethamadapati:06ec4e1b-e0cb-4d1d-9fd5-52a00dad29f9@ondemand.saucelabs.com:80/wd/hub";
	 public static WebDriver getDriver(){
		 return driver;
	 }
	 public WebDriver getDriver(String browserType, String environment){
		 DesiredCapabilities cap = null;
		   if(browserType.equals("firefox")){
			   cap = DesiredCapabilities.firefox();
			   cap.setBrowserName("firefox");
		   }
		   else if(browserType.equals("chrome")){
			   cap = DesiredCapabilities.chrome();
			   cap.setBrowserName("chrome");
		   }
		   else if(browserType.equals("safari")){
			   cap = DesiredCapabilities.safari();
			   cap.setBrowserName("safari");
		   }
		   
		   if(environment.equals("windows")){
			   cap.setPlatform(Platform.WIN10);
		   }
		   else if(environment.equals("mac")){
			   cap.setPlatform(Platform.MAC);
		   }
		   try{
			   driver = new RemoteWebDriver(new URL(rwdurl), cap);
		   }catch(MalformedURLException e){
			   e.printStackTrace();
		   } 
		   driver.manage().window().maximize();
		   driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		 return driver;
		 
	 }
	 public static WebDriver getDriver(String browserType){
		 switch(browserType){
			case "firefox":
				driver = new FirefoxDriver();
				break;
			case "chrome":
				System.setProperty("webdriver.chrome.driver", "D:\\SeleniumAutomation\\chromedriver.exe");
				driver = new ChromeDriver();
				break;
				default:
					System.setProperty("webdriver.chrome.driver", "D:\\SeleniumAutomation\\chromedriver.exe");
					driver = new ChromeDriver();
			}
			return driver;
	 }
}
