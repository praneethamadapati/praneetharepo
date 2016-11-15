package com.nlsinc.facebook.pom.pages.session;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.nlsinc.facebook.pom.pages.LoginPage;
import com.nlsinc.facebook.pom.session.base.BaseSessionPage;
import com.nlsinc.facebook.pom.util.FBConstants;
import com.relevantcodes.extentreports.ExtentTest;

public class LandingPage extends BaseSessionPage{
	public WebDriver driver;
	 
	 public LandingPage(WebDriver driver, ExtentTest test){
		 super(driver, test);
		 PageFactory.initElements(driver, this);
		 
	 }
	public ProfilePage clickProfile(){
		//driver 
		driver.findElement(By.xpath(FBConstants.PROFILE_LINK)).click();
		ProfilePage ppage = new ProfilePage(driver, test);
		return ppage;
	}

	public String getTitle(){
		return driver.getTitle();
	}
}
