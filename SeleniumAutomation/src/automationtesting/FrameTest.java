package automationtesting;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;

public class FrameTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String url = "https://docs.oracle.com/javase/8/docs/api/";
		WebDriver driver = BaseBrowser.getBrowser("firefox", url);
		driver.switchTo().frame("packageListFrame");
		driver.findElement(By.xpath("//div//a[text()='java.lang']"));
		driver.switchTo().defaultContent();
		driver.switchTo().frame("packageFrame");
		String value = driver.findElement(By.xpath("//h1/a")).getText();
		Assert.assertEquals("java.lang", value);
		driver.findElement(By.xpath("//ul[@title='Interfaces']//span[text()='Comparable']")).click();
		driver.switchTo().defaultContent();
		driver.switchTo().frame("classFrame");
		System.out.println(driver.findElement(By.xpath("//div//h2")).getText());
	}

}
