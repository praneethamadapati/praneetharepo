package com.nlsinc.facebook.pom.util;

import java.io.File;
import java.sql.Date;

import com.relevantcodes.extentreports.ExtentReports;

public class ExtentManager {
	private static ExtentReports report;
	private ExtentManager(){
		
	}
	public static ExtentReports getInstance(){
		if(report == null){
			Date dt = new Date(0);
			String filename = "report_"+dt.toString().replace(":", "_").replace(" ", "_");
			String filepath = "D:\\TestFolder\\"+filename;
			report = new ExtentReports(filepath, true);
			report.loadConfig(new File(System.getProperty("user.dir")+"//ReportsConfig.xml"));
			report.addSystemInfo("Selenium version", "2.53.1");
			report.addSystemInfo("Environment", "qa");
			
		}
		return report;
	}
}
