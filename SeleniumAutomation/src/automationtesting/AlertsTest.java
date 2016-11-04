package automationtesting;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class AlertsTest {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		String url = "file:///C:/Users/Praneetha/Downloads/alerts.html";
		WebDriver driver = BaseBrowser.getBrowser("chrome","file:///C:/Users/Praneetha/Downloads/alerts.html");
		driver.findElement(By.id("alert")).click();
		Alert alert = driver.switchTo().alert();
		Thread.sleep(3000);
		alert.accept();
		Thread.sleep(3000);
		driver.findElement(By.id("confirm")).click();
		Thread.sleep(3000);
		alert.dismiss();
		Thread.sleep(3000);
		driver.findElement(By.id("prompt")).click();
		Alert alert1 = driver.switchTo().alert();
		alert1.sendKeys("Praneetha");
		alert1.accept();
		Thread.sleep(3000);
	}

}
