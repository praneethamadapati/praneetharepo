package com.nlsinc.facebook.pom.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.nlsinc.facebook.pom.base.BasePage;
import com.nlsinc.facebook.pom.util.FBConstants;
import com.relevantcodes.extentreports.ExtentTest;

public class LaunchPage extends BasePage{
	 public WebDriver driver;
	 
	 public LaunchPage(WebDriver driver, ExtentTest test){
		 super(driver, test);
		 PageFactory.initElements(driver, this);
		 driver.get(FBConstants.GOOGLE_URL);
	 }
	 
	public LoginPage goToFBLogin(){
		driver.get(FBConstants.FB_URL);
		
		LoginPage loginPage = new LoginPage(driver, test);
		
		return loginPage;
		
	}

}