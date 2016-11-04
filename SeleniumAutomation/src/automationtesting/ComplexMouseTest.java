package automationtesting;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

public class ComplexMouseTest {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		String url = "https://dhtmlx.com/docs/products/dhtmlxTree/";
		WebDriver driver = BaseBrowser.getBrowser("firefox", url);
		WebElement scroll = driver.findElement(By.xpath("//h2[contains(text(),'Live Demo')]"));
		
		WebElement fromTreeBox1 = driver.findElement(By.xpath("//div[@id='treebox1']//span[text()='Ian Rankin']"));
		WebElement toTreeBox2 = driver.findElement(By.xpath("//div[@id='treebox2']//span[text()='Bestsellers']"));
		((JavascriptExecutor)driver).executeScript("arguments[0].scrollIntoView", scroll);
		Actions builder = new Actions(driver);
		builder.clickAndHold(fromTreeBox1).moveToElement(toTreeBox2).release().build().perform();
		Thread.sleep(3000);
		driver.close();
	}

}
