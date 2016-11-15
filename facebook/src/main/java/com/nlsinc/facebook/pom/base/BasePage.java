package com.nlsinc.facebook.pom.base;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.relevantcodes.extentreports.ExtentTest;
import com.relevantcodes.extentreports.LogStatus;

public class BasePage {
	public WebDriver driver;
	public ExtentTest test;
	
	public BasePage(WebDriver driver, ExtentTest test){
		this.driver = driver;
		this.test = test;
	}
	public String getTitle(){
		String title = driver.getTitle();
		test.log(LogStatus.INFO, "title of the page is "+title);
		return title;
	}
	public boolean isElementPresent(String locator){
		int count = driver.findElements(By.xpath(locator)).size();
		boolean isExists = true;
		if(count == 0){
			isExists = false;
		}
		test.log(LogStatus.INFO, "locator used is: "+locator+" and the result is "+isExists);
		return isExists;
	}
}
