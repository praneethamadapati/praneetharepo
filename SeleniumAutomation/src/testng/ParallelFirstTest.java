package testng;

import org.testng.Reporter;
import org.testng.SkipException;
import org.testng.annotations.Test;

public class ParallelFirstTest {
  @Test
  public void C1M1() {
	  System.out.println("C1M1 run by "+Thread.currentThread().getId());
	  throw new SkipException("Just to test the skip exception");
  }
  @Test
  public void C1M2() {
	  Reporter.log("Trying the log reporter to see in emailable reports");
	  System.out.println("C1M2 run by "+Thread.currentThread().getId());
  }
  @Test
  public void C1M3() {
	  System.out.println("C1M3 run by "+Thread.currentThread().getId());
  }
  @Test
  public void C1M4() {
	  System.out.println("C1M4 run by "+Thread.currentThread().getId());
  }
}
