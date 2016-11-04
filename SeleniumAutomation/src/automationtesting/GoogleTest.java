package automationtesting;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class GoogleTest {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		System.setProperty("webdriver.chrome.driver", "D:\\SeleniumAutomation\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.get("http://www.google.com");
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		
		WebElement searchBox = driver.findElement(By.id("lst-ib"));
		searchBox.sendKeys("net");
		Thread.sleep(2000);
		
		WebElement fromSuggestionsContainer = driver.findElement(By.xpath("//div[@id='sbtc']//ul"));
		List<WebElement> fromSuggestions = fromSuggestionsContainer.findElements(By.tagName("li"));
		for(WebElement elements : fromSuggestions){
			if(elements.getText().equals("netflix")){
				elements.click();
				break;
			}
		}
		Thread.sleep(3000);
		
		WebElement netflix = driver.findElement(By.xpath("//div[@id='rso']/div[1]//a[contains(text(),'Netflix - Watch TV Shows Online, Watch Movies Online')]"));
		netflix.click();
		Thread.sleep(3000);
		
		driver.close();
	}

}
