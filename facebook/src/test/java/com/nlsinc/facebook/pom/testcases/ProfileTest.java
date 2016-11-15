package com.nlsinc.facebook.pom.testcases;


import org.testng.annotations.Test;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.PageFactory;
import org.testng.Assert;
import org.testng.annotations.Test;

import com.nlsinc.facebook.pom.pages.LaunchPage;
import com.nlsinc.facebook.pom.pages.LoginPage;
import com.nlsinc.facebook.pom.pages.session.LandingPage;
import com.nlsinc.facebook.pom.pages.session.ProfilePage;
import com.nlsinc.facebook.pom.testcases.base.BaseTest;

public class ProfileTest extends BaseTest{
	@Test
	public void testProfile() {
		// TODO Auto-generated method stub
		init("firefox");
		LaunchPage launchPage = PageFactory.initElements(driver, LaunchPage.class);
		LoginPage loginPage = launchPage.goToFBLogin();
		LandingPage landingPage = (LandingPage) loginPage.login("nlstest16@gmail.com","netlogic123");
		//ProfilePage profilePage = landingPage.clickProfile();
		Assert.assertEquals("Facebook",landingPage.getTitle());
		landingPage.getMenu().logout();
		//profilePage.getMenu().logout();
	}

}