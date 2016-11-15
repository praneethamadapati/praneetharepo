package com.nlsinc.facebook.pom.session.base;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.nlsinc.facebook.pom.base.BasePage;
import com.nlsinc.facebook.pom.session.common.TopMenu;
import com.relevantcodes.extentreports.ExtentTest;

public class BaseSessionPage extends BasePage{
	public TopMenu menu;

	public BaseSessionPage(WebDriver driver, ExtentTest test) {
		super(driver, test);
		this.menu = PageFactory.initElements(driver, TopMenu.class);
		// TODO Auto-generated constructor stub
	}
	
	public TopMenu getMenu(){
		return this.menu;
	}

}
