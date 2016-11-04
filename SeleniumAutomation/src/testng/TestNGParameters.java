package testng;

import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import org.testng.annotations.BeforeClass;
import org.junit.runners.Parameterized.Parameters;
import org.testng.annotations.AfterClass;


public class TestNGParameters {
  @org.testng.annotations.Parameters({"fname","lname","companyname"})
  @Test
  public void insertEmployee(String fName, String lName, String companyName) {
	  System.out.println(fName+" "+lName+" "+companyName);
  }
  @BeforeClass
  public void beforeClass() {
	  System.out.println("Before class");
  }

  @AfterClass
  public void afterClass() {
	  System.out.println("After class");
  }

}
