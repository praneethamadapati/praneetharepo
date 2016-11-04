package testng;

import org.testng.annotations.Test;

public class ParallelSecondTest {
	@Test
	  public void C2M1() {
		  System.out.println("C2M1 run by "+Thread.currentThread().getId());
	  }
	  @Test
	  public void C2M2() {
		  System.out.println("C2M2 run by "+Thread.currentThread().getId());
	  }
	  @Test
	  public void C2M3() {
		  System.out.println("C2M3 run by "+Thread.currentThread().getId());
	  }
	  @Test
	  public void C2M4() {
		  System.out.println("C2M4 run by "+Thread.currentThread().getId());
	  }
}
