package automationframeworks;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class GenericKeywords {
	public WebDriver driver;
	public Properties prop;
	
	public GenericKeywords() {
		prop = new Properties();
		try {
			FileInputStream fis = new FileInputStream("project.properties");
			prop.load(fis);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void openBrowser(String browserType){
		
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
	}
	
	public void navigateToUrl(String urlKey){
		driver.get(prop.getProperty(urlKey));
	}
	
	/*public void gmail_click(String locator){
		driver.findElement(By.xpath(locator)).click();
	}*/
	
	public void click(String locatorKey){
		WebElement elem = getElement(locatorKey);
		elem.click();
	}
	
	public void inputText(String locatorKey, String data){
		WebElement elem = getElement(locatorKey);
		elem.sendKeys(data);
	}
	
	public void closeBrowser(){
		driver.quit();
	}
	
	public String getTitle(){
		return driver.getTitle();
	}
	
	public String getText(String locator){
		return driver.findElement(By.id(locator)).getText();
	}
	
	public WebElement getElement(String locatorKey){
		WebElement elem = null;
		if(locatorKey.endsWith("_xpath")){
			elem = driver.findElement(By.xpath(prop.getProperty(locatorKey)));
		}else if(locatorKey.endsWith("_id")){
			elem = driver.findElement(By.id(prop.getProperty(locatorKey)));
		}else if(locatorKey.endsWith("_css")){
			elem = driver.findElement(By.cssSelector(prop.getProperty(locatorKey)));
		}
		return elem;
	}
}
