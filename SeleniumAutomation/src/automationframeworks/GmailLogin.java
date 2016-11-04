package automationframeworks;

import java.io.FileNotFoundException;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.testng.annotations.Test;

import automationtesting.BaseBrowser;
import utils.ExcelReader;

public class GmailLogin {
  @Test(enabled = false)
  public void login() {
	  WebDriver driver = BaseBrowser.getBrowser("firefox");
	  driver.get("https://www.google.com/");
	  driver.findElement(By.xpath("//a[text()='Gmail']")).click();
	  driver.findElement(By.id("Email")).sendKeys("madapatipraneetha");
	  driver.findElement(By.id("next")).click();
	  driver.findElement(By.id("Passwd")).sendKeys("madapati2114!");
	  driver.findElement(By.id("signIn")).click();
	  driver.close();
  }
  
  @Test(enabled = false)
  public void doGmailLogin() throws FileNotFoundException{
	  GenericKeywords gk = new GenericKeywords();
	  gk.openBrowser("chrome");
	  gk.navigateToUrl("url");
	  gk.click("gmail_xpath");
	  gk.inputText("email_id", "madapatipraneetha");
	  gk.click("next_id");
	  gk.inputText("password_id", "madapati2114!");
	  gk.click("signin_id");
	  System.out.println(gk.getTitle());
	  gk.closeBrowser();
  }
  
  @Test(enabled = false)
  public void doFaceBookLogin() throws FileNotFoundException{
	  GenericKeywords gk = new GenericKeywords();
	  gk.openBrowser("firefox");
	  gk.navigateToUrl("fb_url");
	  gk.inputText("fbemail_id", "madapatipraneetha");
	  gk.inputText("fbpassword_id", "madapati2114!");
	  gk.click("fblogin_id");
	  System.out.println(gk.getTitle());
	  gk.closeBrowser();
  }
  
  @Test
  public void dataDrive() throws FileNotFoundException{
	  String testToRun = "GmailTest";
	  GenericKeywords gk = new GenericKeywords();
	  ExcelReader rdr = new ExcelReader(System.getProperty("user.dir")+"//src//data//GenericData.xlsx");
	  int rows = rdr.getRowCount("keywords");
	  System.out.println(rows);
	  for(int i=2;i<=rows;i++)
	  {
		  String tc = rdr.getCellData("keywords","TestCase",i);
		  if(tc.equals(testToRun)){
			  String keyword = rdr.getCellData("keywords","keyword",i);
			  String object = rdr.getCellData("keywords","object",i);
			  String data = rdr.getCellData("keywords","data",i);
			  System.out.println(tc+"--"+keyword);
		  if(keyword.equals("openBrowser")){
			  gk.openBrowser(data);
		  }else if(keyword.equals("navigateToUrl")){
			  gk.navigateToUrl(object);}
		  else if(keyword.equals("click")){
			  gk.click(object);
		  }else if(keyword.equals("inputText")){
			  gk.inputText(object, data);
		  }else if(keyword.equals("closeBrower")){
			  gk.closeBrowser();
		  }
		}
	  }
  }
}
