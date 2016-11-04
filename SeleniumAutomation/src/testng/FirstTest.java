package testng;

import org.testng.annotations.Test;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.AfterClass;

public class FirstTest {
  @Test(groups={"honda"})
  public void firstCase() {
	  System.out.println("First test case");
  }
  @Test
  public void secondCase() {
	  System.out.println("Second test case");
  }
  @BeforeMethod
  public void beforeMethod() {
	  System.out.println("First Class Before Method");
  }

  @AfterMethod
  public void afterMethod() {
	  System.out.println("First Class After Method");
  }

  @BeforeClass
  public void beforeClass() {
	  System.out.println("First Class Before Class");
  }

  @AfterClass
  public void afterClass() {
	  System.out.println("First Class After Class");
  }

}
