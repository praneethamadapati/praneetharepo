package com.nlsinc.facebook.pom.testcases;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.support.PageFactory;
import org.testng.ITestResult;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Parameters;
import org.testng.annotations.Test;

import com.nlsinc.facebook.pom.base.BasePage;
import com.nlsinc.facebook.pom.pages.LaunchPage;
import com.nlsinc.facebook.pom.pages.LoginPage;
import com.nlsinc.facebook.pom.pages.session.LandingPage;
import com.nlsinc.facebook.pom.pages.session.ProfilePage;
import com.nlsinc.facebook.pom.testcases.base.BaseTest;
import com.relevantcodes.extentreports.LogStatus;

import junit.framework.Assert;

public class LoginTest extends BaseTest{
	/*
	@Parameters({"browserType"})
	@BeforeClass
	public void init(String browserType){
		super.init(browserType);
	}*/
  @Test
  public void loginFail() {
	  init("firefox");
	  test = report.startTest("loginfail");
	  LaunchPage launchPage =new LaunchPage(driver, test);
	  
	  test.log(LogStatus.INFO, "Launch page is initialized");
		LoginPage loginPage = launchPage.goToFBLogin();
		test.log(LogStatus.INFO, "Login page is initialized");
		BasePage basePage = loginPage.login("nlstest16@gmail.com","netlogic123");
		test.log(LogStatus.INFO, "Credentials passed are nlstest16@gmail.com/netlogic123");
		LandingPage landingPage = null;
		if(basePage instanceof LoginPage){
			test.log(LogStatus.FAIL, "Login details are incorrect");
			Assert.fail("login failed");
		}else{
			
			landingPage = (LandingPage)basePage;
		}
		Assert.assertNotNull(landingPage);
		test.log(LogStatus.PASS, "Login is successful");
		ProfilePage profilePage = landingPage.clickProfile();
		Assert.assertNotNull(profilePage);
		test.log(LogStatus.PASS, "Profile page is successful");
  }
  
  @Test
  public void loginSuccess() {
	  init("firefox");
	  test = report.startTest("loginsuccess");
	  LaunchPage launchPage =new LaunchPage(driver, test);
	  
	  test.log(LogStatus.INFO, "Launch page is initialized");
		LoginPage loginPage = launchPage.goToFBLogin();
		test.log(LogStatus.INFO, "Login page is initialized");
		BasePage basePage = loginPage.login("nlstest16@gmail.com","netlogic123");
		test.log(LogStatus.INFO, "Credentials passed are nlstest16@gmail.com/netlogic123");
		LandingPage landingPage = null;
		if(basePage instanceof LoginPage){
			test.log(LogStatus.FAIL, "Login details are incorrect");
			Assert.fail("login failed");
		}else{
			
			landingPage = (LandingPage)basePage;
		}
		Assert.assertNotNull(landingPage);
		test.log(LogStatus.PASS, "Login is successful");
		ProfilePage profilePage = landingPage.clickProfile();
		Assert.assertNotNull(profilePage);
		test.log(LogStatus.PASS, "Profile page is successful");
  }
  
  @AfterMethod
  public void afterMethod(ITestResult result) {
	  if(result.getStatus() == ITestResult.FAILURE){
		  File srcFile = ((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
			try {
				FileUtils.copyFile(srcFile, new File("D:\\TestFolder\\image1.jpg"));
				  test.log(LogStatus.ERROR, test.addScreenCapture("D:\\TestFolder\\image1.jpg"));

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	  }
	  report.endTest(test);
	  //driver.quit();
  }
  @AfterClass
  public void afterClass() {
	  report.flush();
  }
}
