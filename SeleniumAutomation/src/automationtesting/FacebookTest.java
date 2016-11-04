package automationtesting;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

public class FacebookTest {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		System.setProperty("webdriver.chrome.driver", "D:\\SeleniumAutomation\\chromedriver.exe");
		WebDriver driver=new ChromeDriver();
		driver.get("http://www.facebook.com");
		driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS);
		
		WebElement firstName=driver.findElement(By.id("u_0_1"));
		firstName.sendKeys("Nikhitha");
		Thread.sleep(2000);
		
		WebElement lastname=driver.findElement(By.id("u_0_3"));
		lastname.sendKeys("Sharma");
		Thread.sleep(2000);
		
		WebElement emailaddress=driver.findElement(By.id("u_0_5"));
		emailaddress.sendKeys("nikhithasharma007@gmail.com");
		Thread.sleep(2000);
		
		WebElement emailconfirmation=driver.findElement(By.id("u_0_8"));
		emailconfirmation.sendKeys("nikhithasharma007@gmail.com");
		Thread.sleep(2000);
		
		WebElement password=driver.findElement(By.id("u_0_a"));
		password.sendKeys("123456789");
		Thread.sleep(2000);
		
		WebElement birthday=driver.findElement(By.id("day"));
		Select day=new Select(birthday);
		day.selectByValue("14");
		Thread.sleep(2000);
		
		WebElement birthdaymonth=driver.findElement(By.id("month"));
		Select month=new Select(birthdaymonth);
		month.selectByVisibleText("Oct");
		Thread.sleep(2000);
		
		WebElement birthdayyear=driver.findElement(By.id("year"));
		Select year=new Select(birthdayyear);
		year.selectByValue("1992");
		Thread.sleep(2000);
		
		WebElement gender=driver.findElement(By.id("u_0_d"));
		gender.click();
		Thread.sleep(2000);
		
		WebElement signup=driver.findElement(By.id("u_0_i"));
		signup.click();
		Thread.sleep(2000);
	}

}
