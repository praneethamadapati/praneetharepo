package automationtesting;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.net.ssl.HttpsURLConnection;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class FindClickableLinks {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.setProperty("webdriver.chrome.driver", "D:\\SeleniumAutomation\\chromedriver.exe");
		WebDriver driver=new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("https://www.travelocity.com");
		driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS);
		List<WebElement> anchors = driver.findElements(By.tagName("a"));
		List<WebElement> images = driver.findElements(By.tagName("img"));
		anchors.addAll(images);
		System.out.println("Total size is: "+anchors.size());
		List<WebElement> clickables = new ArrayList<>();
		for(WebElement elements : anchors)
		{
			if(elements.getAttribute("href")!=null){
				clickables.add(elements);
			}
			if(elements.getAttribute("src")!=null){
				clickables.add(elements);
			}
		}
		System.out.println("clickables size is: "+clickables.size());
		for(WebElement elements : clickables){
			if(elements.getAttribute("href")!=null){
				String url2 = elements.getAttribute("href");
				try{
					System.out.println("URL: "+url2+"--"+checkURL(url2));
				}
				catch(Exception e){
					System.out.println("URL: "+url2+"--"+"ExceptionOccurred");
					e.printStackTrace();
				}
			}
		}
	}
	public static String checkURL(String surl) throws IOException
	{
		URL url = new URL(surl);
		HttpsURLConnection connection = (HttpsURLConnection)url.openConnection();
		connection.connect();
		String resp = connection.getResponseMessage();
		connection.disconnect();
		return resp;
	}
}
