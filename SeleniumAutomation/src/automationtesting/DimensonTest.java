package automationtesting;

import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;

public class DimensonTest {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		String url = "https://www.travelocity.com";
		WebDriver driver = BaseBrowser.getBrowser("chrome", url);
		Dimension dimension = new Dimension(120,180);
		driver.manage().window().setSize(dimension);
		driver.findElement(By.id("search-button")).click();
		Thread.sleep(3000);
		driver.close();
	}

}
