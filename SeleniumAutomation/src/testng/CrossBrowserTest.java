package testng;

import org.testng.annotations.Test;

import automationtesting.BaseClass;
import junit.framework.Assert;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.Parameters;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.testng.annotations.AfterClass;

public class CrossBrowserTest {
  WebDriver driver;
  String url = "http://www.google.com";
  String rwdurl = "http://praneethamadapati:06ec4e1b-e0cb-4d1d-9fd5-52a00dad29f9@ondemand.saucelabs.com:80/wd/hub";
   @Parameters({"browserType","environment"})
  @BeforeClass
  public void init(String browserType, String environment) {
	  driver = BaseClass.getDriver(browserType);
	  driver.get(url);
	  
  }
   
   @Test
   public void verifyTitle(){
	   String title = driver.getTitle();
	   Assert.assertEquals(title, "Google");
   }

  @AfterClass
  public void afterClass() throws InterruptedException {
	  if(driver!=null)
	  {
		  Thread.sleep(30000);
		  driver.quit();
	  }
  }

}
