package testng;

import org.testng.annotations.Test;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.AfterSuite;

public class SecondTest {
  @Test
  public void secondTestFirstCase() {
	  System.out.println("secondTestFirstCase-Testcase");
  }
  @BeforeMethod
  public void beforeMethod() {
	  System.out.println("secondTestFirstCase-BeforeMethod");
  }

  @AfterMethod
  public void afterMethod() {
	  System.out.println("secondTestFirstCase-AfterMethod");
  }

  @BeforeClass
  public void beforeClass() {
	  System.out.println("secondTestFirstCase-BeforeClass");
  }

  @AfterClass
  public void afterClass() {
	  System.out.println("secondTestFirstCase-AfterClass");
  }

  @BeforeTest
  public void beforeTest() {
	  System.out.println("secondTestFirstCase-BeforeTest");
  }

  @AfterTest
  public void afterTest() {
	  System.out.println("secondTestFirstCase-AfterTest");
  }

  @BeforeSuite
  public void beforeSuite() {
	  System.out.println("secondTestFirstCase-BeforeSuite");
  }

  @AfterSuite
  public void afterSuite() {
	  System.out.println("secondTestFirstCase-AfterSuite");
  }

}
