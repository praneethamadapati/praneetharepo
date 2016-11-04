package automationtesting;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class TableTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String url = "https://dhtmlx.com/docs/products/dhtmlxGrid/";
		WebDriver driver = BaseBrowser.getBrowser("chrome", url);
		WebElement table = driver.findElement(By.xpath(""));
	}

}
