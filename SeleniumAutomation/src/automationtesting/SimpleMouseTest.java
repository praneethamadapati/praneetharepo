package automationtesting;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

public class SimpleMouseTest {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		String url = "http://www.tcs.com/Pages/default.aspx";
		WebDriver driver = BaseBrowser.getBrowser("chrome", url);
		//driver.manage().window().maximize();
		WebElement services = driver.findElement(By.xpath("//ul[@id='mainnav']//a[contains(@href,'/offerings/Pages/default')]"));
		WebElement consulting = driver.findElement(By.xpath("//ul[@id='mainnav']//a[contains(@href,'/consulting/Pages/default')]"));
		Actions builder = new Actions(driver);
		builder.moveToElement(services).build().perform();
		Thread.sleep(5000);
		builder.moveToElement(consulting).click().build().perform();
		Thread.sleep(3000);
		driver.quit();
	}

}
