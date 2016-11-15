package com.nlsinc.facebook.scratch;

import org.testng.annotations.Test;

import com.relevantcodes.extentreports.ExtentReports;
import com.relevantcodes.extentreports.ExtentTest;
import com.relevantcodes.extentreports.LogStatus;

import org.testng.annotations.BeforeMethod;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;

import java.io.File;
import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.annotations.AfterClass;
  class TestExtentReportsNG {
	  ExtentReports report;
	  ExtentTest test;
	  WebDriver driver;
	  
	  @BeforeClass
	  public void beforeClass() {
		  report = new ExtentReports("D:\\TestFolder\\report.html", true);
		  
	  }
	  
	  @BeforeMethod
	  public void beforeMethod(Method caller) {
		  test = report.startTest(caller.getName(), "This is one generic start test");
		  driver = new FirefoxDriver();
		  test.log(LogStatus.INFO, "driver has been initialized");
		  driver.manage().window().maximize();
		  driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	  }
	  
	  @Test
  public void google() {
		  test.log(LogStatus.INFO, "driver is maximized");
			driver.get("http://www.google.com");
			test.log(LogStatus.INFO, "navigated to google.com");
			String expected = "Google";
			Assert.assertEquals(driver.getTitle(), expected);
			test.log(LogStatus.PASS, "Both expexted and actual are same");
			//test.log(LogStatus.INFO, test.addScreenCapture("D:\\TestFolder\\travelocity.jpg"));
  }
	  
	  @Test
	  public void facebook() {
			  test.log(LogStatus.INFO, "driver is maximized");
				driver.get("http://www.facebook.com");
				test.log(LogStatus.INFO, "navigated to facebook.com");
				String expected = "Facebook-Log In or Sign Up";
				Assert.assertEquals(driver.getTitle(), expected);
				test.log(LogStatus.PASS, "Both expexted and actual are same");
				
	  }

  @AfterMethod
  public void afterMethod(ITestResult result) {
	  /*try{
		  File srcFile = ((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
		FileUtils.copyFile(srcFile, new File("D:\\TestFolder\\travelocity.jpg"));
	  }catch(Exception e){
		  test.log(LogStatus.ERROR, e.getMessage());
	  }*/
	  if(result.getStatus() == ITestResult.FAILURE){
		  test.log(LogStatus.ERROR, test.addScreenCapture("D:\\TestFolder\\travelocity.jpg"));
	  }
	  report.endTest(test);
	  driver.quit();
  }

 

  @AfterClass
  public void afterClass() {
	  report.flush();
  }
  

}
