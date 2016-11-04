package automationtesting;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class ExpediaTest {

	public static void main(String[] args) throws InterruptedException{
		// TODO Auto-generated method stub
		System.setProperty("webdriver.chrome.driver", "D:\\SeleniumAutomation\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("https://www.expedia.com");
		driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS);
		
		WebElement flightTab = driver.findElement(By.id("tab-flight-tab"));
		flightTab.click();
		Thread.sleep(2000);
		
		WebElement oneWay = driver.findElement(By.id("flight-type-one-way-label"));
		oneWay.click();
		Thread.sleep(2000);
		
		WebElement from = driver.findElement(By.id("flight-origin"));
		from.sendKeys("yy");
		WebElement fromSuggestionsContainer = driver.findElement(By.xpath(".//*[@id='typeahead-list']/div/div/ul"));
		Thread.sleep(1000);
		
		List<WebElement> fromSuggestions = fromSuggestionsContainer.findElements(By.tagName("li"));
		for(WebElement elements : fromSuggestions){
		if(elements.getText().equals("Toronto, ON, Canada (YYZ-Pearson Intl.)")){
			elements.click();
			break;
		}
		}
		Thread.sleep(3000);
		
		WebElement to = driver.findElement(By.id("flight-destination"));
		to.sendKeys("sf");
		WebElement toSuggestionsContainer = driver.findElement(By.xpath(".//*[@id='typeahead-list']/div/div/ul"));
		Thread.sleep(1000);
		
		List<WebElement> toSuggestions = toSuggestionsContainer.findElements(By.tagName("li"));
		for(WebElement elements : toSuggestions){
		if(elements.getText().equals("San Francisco, CA (SFO-San Francisco Intl.)")){
			elements.click();
			break;
		}
		}
		Thread.sleep(3000);
		
		driver.close();
		}
	}


