package automationtesting;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class BaseBrowserTest {

	public static void main(String[] args) throws InterruptedException, FileNotFoundException, IOException {
		// TODO Auto-generated method stub
/*		WebDriver driver = BaseBrowser.getBrowser("chrome");
*/		Properties prop = new Properties();
		prop.load(new FileReader("input.properties"));
		WebDriver driver = BaseBrowser.getBrowser(prop.getProperty("browser"),"http://www.google.com");
		driver.manage().window().maximize();
		System.out.println(driver.getTitle());
		System.out.println(driver.getCurrentUrl());
		System.out.println(driver.getPageSource());
		driver.navigate().to("http://www.facebook.com");
		Thread.sleep(3000);
		driver.navigate().back();
		Thread.sleep(3000);
		driver.navigate().forward();
		Thread.sleep(3000);
		driver.navigate().refresh();
	}

}
