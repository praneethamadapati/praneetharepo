package testng;

import org.testng.annotations.Test;

public class GroupTest {
  @Test(groups={"bmw","suv"})
  public void bmwx3() {
	  System.out.println("bmwx3");
  }
  @Test(groups={"bmw","suv","premium"})
  public void bmwx5() {
	  System.out.println("bmwx5");
  }
  @Test(groups={"audi","sedan"})
  public void audiA4() {
	  System.out.println("audiA4");
  }
  @Test(groups={"audi","sedan"})
  public void audiA6() {
	  System.out.println("audiA6");
  }
  @Test(groups={"audi","sedan","premium"})
  public void audiA8() {
	  System.out.println("audiA8");
  }
  @Test(groups={"audi","suv"})
  public void audiQ5() {
	  System.out.println("audiQ5");
  }
  @Test(groups={"audi","suv","premium"})
  public void audiQ7() {
	  System.out.println("audiQ7");
  }
  @Test(groups={"honda","sedan"})
  public void hondaAccord() {
	  System.out.println("hondaAccord");
  }
  @Test(groups={"suzuki","hatch"})
  public void altoK1() {
	  System.out.println("altoK1");
  }
  @Test(groups={"suzuki","hatch"})
  public void hyundai() {
	  System.out.println("bmwx3");
  }
}
