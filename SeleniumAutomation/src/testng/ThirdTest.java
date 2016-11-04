package testng;

import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

public class ThirdTest {
  @Test
  public void thirdTestFirstCase() {
	  System.out.println("thirdTestFirstCase-Testcase");

  }
  @Test
  public void thirdTestSecondCase() {
	  System.out.println("thirdTestSecondCase-Testcase");

  }
  @BeforeMethod
  public void beforeMethod() {
	  System.out.println("thirdTestFirstCase-BeforeMethod");
  }

  @AfterMethod
  public void afterMethod() {
	  System.out.println("thirdTestFirstCase-AfterMethod");
  }

  @BeforeClass
  public void beforeClass() {
	  System.out.println("thirdTestFirstCase-BeforeClass");
  }

  @AfterClass
  public void afterClass() {
	  System.out.println("thirdTestFirstCase-AfterClass");
  }

  @BeforeTest
  public void beforeTest() {
	  System.out.println("thirdTestFirstCase-BeforeTest");
  }

  @AfterTest
  public void afterTest() {
	  System.out.println("thirdTestFirstCase-AfterTest");
  }

  @BeforeSuite
  public void beforeSuite() {
	  System.out.println("thirdTestFirstCase-BeforeSuite");
  }

  @AfterSuite
  public void afterSuite() {
	  System.out.println("thirdTestFirstCase-AfterSuite");
  }
}
