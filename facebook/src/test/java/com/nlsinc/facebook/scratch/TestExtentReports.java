package com.nlsinc.facebook.scratch;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;

import com.relevantcodes.extentreports.ExtentReports;
import com.relevantcodes.extentreports.ExtentTest;
import com.relevantcodes.extentreports.LogStatus;

public class TestExtentReports {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ExtentReports report = new ExtentReports("D:\\TestFolder\\report.html",true);
		ExtentTest test = report.startTest("Google Title check", "This is for title check");
		WebDriver driver = new FirefoxDriver();
		test.log(LogStatus.INFO, "driver has been initialized");
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);;
		test.log(LogStatus.INFO, "driver is maximized");
		driver.get("http://www.google.com");
		test.log(LogStatus.INFO, "navigated to google.com");
		String expected = "Google";
		Assert.assertEquals(driver.getTitle(), expected);
		test.log(LogStatus.PASS, "Both expexted and actual are same");
		test.log(LogStatus.INFO, test.addScreenCapture("D:\\TestFolder\\travelocity.jpg"));
		report.endTest(test);
		report.flush();
	}

}
