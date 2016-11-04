package automationtesting;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class AmazonTest {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		System.setProperty("webdriver.chrome.driver", "D:\\SeleniumAutomation\\chromedriver.exe");
		WebDriver driver=new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("https://www.amazon.com/");
		driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS);
		
		WebElement searchBox = driver.findElement(By.id("twotabsearchtextbox"));
		searchBox.sendKeys("Iphone 6s");
		Thread.sleep(2000);
		
		WebElement searchElement = driver.findElement(By.xpath("//div[@id='issDiv0']"));
		searchElement.click();
		Thread.sleep(2000);
		
		WebElement iphone6SCase = driver.findElement(By.xpath("//h2[contains(text(),'[Ultra-thin Series] 2-in-1 Full-body Protective Back Cover')]"));
		((JavascriptExecutor)driver).executeScript("arguments[0].scrollIntoView", iphone6SCase);
		Thread.sleep(2000);
		iphone6SCase.click();
		Thread.sleep(2000);
		
		WebElement addToList = driver.findElement(By.xpath("//input[@id='add-to-wishlist-button-submit']"));
		addToList.click();
		Thread.sleep(2000);
		
		WebElement loginEmail = driver.findElement(By.id("ap_email"));
		loginEmail.sendKeys("madapatipraneetha@gmail.com");
		Thread.sleep(1000);
		
		WebElement loginPassword = driver.findElement(By.id("ap_password"));
		loginPassword.sendKeys("madapati140626!");
		Thread.sleep(1000);
		
		WebElement signIn = driver.findElement(By.id("signInSubmit"));
		signIn.click();
		Thread.sleep(1000);
	}

}
