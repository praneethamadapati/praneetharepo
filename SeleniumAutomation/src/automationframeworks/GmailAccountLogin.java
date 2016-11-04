package automationframeworks;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class GmailAccountLogin {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		System.setProperty("webdriver.chrome.driver", "D:\\SeleniumAutomation\\chromedriver.exe");
		WebDriver driver=new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("https://www.google.com/");
		driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS);
		
		WebElement gmail = driver.findElement(By.xpath("//div[@id='gbw']//a[text()='Gmail']"));
		gmail.click();
		Thread.sleep(2000);
		
		WebElement signIn = driver.findElement(By.xpath("//a[text()='Sign In']"));
		signIn.click();
		Thread.sleep(2000);
		
		WebElement email = driver.findElement(By.xpath("//input[@id='Email']"));
		email.sendKeys("madapatipraneetha@gmail.com");
		Thread.sleep(2000);
		
		WebElement next = driver.findElement(By.xpath("//input[@id='next']"));
		next.click();
		Thread.sleep(2000);
		
		WebElement password = driver.findElement(By.xpath("//input[@id='Passwd']"));
		password.sendKeys("madapati2114!");
		Thread.sleep(2000);
		
		WebElement signIn1 = driver.findElement(By.xpath("//input[@id='signIn']"));
		signIn1.click();
		Thread.sleep(2000);
		
		WebElement compose = driver.findElement(By.xpath("//div[@id=':it']//div[text()='COMPOSE']"));
		compose.click();
		Thread.sleep(2000);
		
		WebElement recipient = driver.findElement(By.xpath("//div[@id=':nc']"));
		recipient.sendKeys("madapatipraneetha@gmail.com");
		Thread.sleep(2000);
		
		WebElement subject = driver.findElement(By.xpath("//input[@id=':ng']"));
		subject.sendKeys("Good Morning!!");
		Thread.sleep(2000);
		
		WebElement body = driver.findElement(By.xpath("//div[@id=':pn']"));
		body.sendKeys("Hello Praneetha. Good Morning!!"
				+ "Hope you're doing good."
				+ "Have a good day!");
		Thread.sleep(2000);
		
		WebElement send = driver.findElement(By.xpath("//div[@id=':lu']"));
		send.click();
		Thread.sleep(2000);
	}

}
