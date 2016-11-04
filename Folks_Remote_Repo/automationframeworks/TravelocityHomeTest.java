package automationframeworks;

import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Parameters;

import automationtesting.BaseClass;

public class TravelocityHomeTest {
	
	WebDriver driver = null;
	String url = "https://www.travelocity.com";
	
  @Test
  public void oneWayNATest() throws InterruptedException {
	  TravelocityHomePage page = new TravelocityHomePage(driver);
	  page.clickOnFlightsTab();
	  page.selectOneWay();
	  page.enterOriginCity("sfo", "San Francisco, CA (SFO-San Francisco Intl.)");
	  page.enterDestCity("yyz", "Toronto, ON, Canada (YYZ - Pearson Intl.)");
	  page.selectDate("10/28/2016");
	  page.selectPassengers(2);
	  TravelocityResultsPage rp = page.search();
	  String actual = rp.getTitle();
	  String expected = "SFO to YYZ Flights | Travelocity";
	  Assert.assertEquals(actual, expected);
  }
  
  @Parameters("browserType")
  @BeforeClass
  public void beforeClass(String browserType) {
	  
	  driver = BaseClass.getDriver(browserType);
	  driver.get(url);
	  
  }

  @AfterClass
  public void afterClass() {
	  driver.quit();
  }

}
