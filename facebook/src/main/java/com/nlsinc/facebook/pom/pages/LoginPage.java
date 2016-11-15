package com.nlsinc.facebook.pom.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.nlsinc.facebook.pom.base.BasePage;
import com.nlsinc.facebook.pom.pages.session.LandingPage;
import com.nlsinc.facebook.pom.util.FBConstants;
import com.relevantcodes.extentreports.ExtentTest;
import com.relevantcodes.extentreports.LogStatus;

public class LoginPage extends BasePage{
	public WebDriver driver;
	@FindBy(id=FBConstants.EMAIL_LOC)
	public WebElement email;
	@FindBy(id=FBConstants.PWD_LOC)
	public WebElement pwd;
	 
	 public LoginPage(WebDriver driver, ExtentTest test){
		 super(driver, test);
		 PageFactory.initElements(driver, this);
		 
	 }
	
	public BasePage login(String uname, String pwd){
		test.log(LogStatus.INFO, "Inside login method of login page with uname "+uname);
		this.email.sendKeys(uname);
		this.pwd.sendKeys(pwd);
		this.pwd.sendKeys(Keys.ENTER);
		boolean isPresent = isElementPresent(FBConstants.PROFILE_LINK);
		if(isPresent){
		test.log(LogStatus.INFO, "Element is present and landing page is going to be opened");
		LandingPage landingPage = new LandingPage(driver, test);
		return landingPage;
		}
		else{
			test.log(LogStatus.WARNING, "Element is not present and landing page is not going to be opened");
			LoginPage loginPage = new LoginPage(driver, test);
			return loginPage;
		}
	}
	
	public String getTitle(){
		return driver.getTitle();
	}
}