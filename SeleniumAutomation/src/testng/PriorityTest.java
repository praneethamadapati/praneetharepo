package testng;

import org.testng.annotations.Test;

public class PriorityTest {
  @Test(priority=0)
  public void f() {
	  System.out.println("f");
  }
  @Test(priority=2)
  public void a() {
	  System.out.println("a");
  }
  @Test(priority=1)
  public void z() {
	  System.out.println("z");
  }
}
