package testng;

import org.testng.annotations.Test;

import junit.framework.Assert;

public class DependantOnTest {
  @Test(dependsOnMethods={"registration"},alwaysRun=true)
  public void login() {
	  System.out.println("Login");
  }
  @Test
  public void registration() {
	  System.out.println("Registration");
	  Assert.assertFalse(true);
  }
  @Test(dependsOnMethods={"login"},enabled=false)
  public void activate() {
	  System.out.println("Activate");
  }
}
