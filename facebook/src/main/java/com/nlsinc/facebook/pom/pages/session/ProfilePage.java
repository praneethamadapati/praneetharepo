package com.nlsinc.facebook.pom.pages.session;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.nlsinc.facebook.pom.pages.LoginPage;
import com.nlsinc.facebook.pom.session.base.BaseSessionPage;
import com.relevantcodes.extentreports.ExtentTest;

public class ProfilePage extends BaseSessionPage{
	public WebDriver driver;
	 
	 public ProfilePage(WebDriver driver, ExtentTest test){
		 super(driver, test);
		 PageFactory.initElements(driver, this);
		 
	 }
	public String getTitle(){
		return driver.getTitle();
	}

}