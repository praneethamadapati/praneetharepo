package automationtesting;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

public class RightClickTest {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		String url = "http://swisnl.github.io/jQuery-contextMenu/demo.html";
		WebDriver driver = BaseBrowser.getBrowser("firefox", url);
		WebElement rightClick = driver.findElement(By.xpath("//span[text()='right click me']"));
		Actions clicking = new Actions(driver);
		clicking.contextClick(rightClick).build().perform();
/*		driver.findElement(By.xpath("//ul//span[text()='Edit']")).click();
*/		clicking.sendKeys(Keys.ARROW_RIGHT).build().perform();
		clicking.sendKeys(Keys.ARROW_DOWN).build().perform();
		clicking.sendKeys(Keys.ENTER).build().perform();
		Alert alert = driver.switchTo().alert();
		Thread.sleep(3000);
		System.out.println(alert.getText());
		alert.accept();
		driver.close();
	}

}
