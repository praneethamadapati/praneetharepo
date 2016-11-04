package testng;

import org.testng.annotations.Test;

public class ParallelThirdTest {
	@Test
	  public void C3M1() {
		  System.out.println("C3M1 run by "+Thread.currentThread().getId());
	  }
	  @Test
	  public void C3M2() {
		  System.out.println("C3M2 run by "+Thread.currentThread().getId());
	  }
	  @Test
	  public void C3M3() {
		  System.out.println("C3M3 run by "+Thread.currentThread().getId());
	  }
	  @Test
	  public void C3M4() {
		  System.out.println("C3M4 run by "+Thread.currentThread().getId());
	  }
}
