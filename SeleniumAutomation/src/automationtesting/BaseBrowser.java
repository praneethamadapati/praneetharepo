package automationtesting;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;

public class BaseBrowser {
		// TODO Auto-generated method stub
	public static WebDriver getBrowser(String browserType, String url)
	{			
		WebDriver driver = null;
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
		driver.get(url);
		return driver;			
	}
	
	public static WebDriver getBrowser(String browserType)
	{			
		WebDriver driver = null;
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
			
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		return driver;
	}
}
