package com.nlsinc.facebook.pom.testcases.base;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import com.nlsinc.facebook.pom.util.ExtentManager;
import com.nlsinc.facebook.pom.util.FBConstants;
import com.relevantcodes.extentreports.ExtentReports;
import com.relevantcodes.extentreports.ExtentTest;

public class BaseTest {
	public WebDriver driver;
	public ExtentReports report = ExtentManager.getInstance();
	public ExtentTest test;
	
	public void init(String browserType){
		switch(browserType){
		case "firefox":
			driver = new FirefoxDriver();
			break;
		case "chrome":
			System.setProperty("webdriver.chrome.driver", FBConstants.CHROME_DRIVER_EXE);
			driver = new ChromeDriver();
			break;
			default:
				System.setProperty("webdriver.chrome.driver", "D:\\SeleniumAutomation\\chromedriver.exe");
				driver = new ChromeDriver();
		}
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(FBConstants.IMPLICIT_TIMEOUT_SEC, TimeUnit.SECONDS);				
	}
}
