package testng;

import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class DataProviderParametersTest {
	@Test(dataProvider="getEmployeeData")
	public void insertEmployee(String fName, String lName, String companyName) {
		  System.out.println(fName+" "+lName+" "+companyName);
	  }
	@DataProvider(name="getEmployeeData")
	public Object[][] getEmpData(){
		return new Object[][]{
			new Object[]{"Praneetha","Madapati","netLogic"},
			new Object[]{"Divya","Maringanti","Stubhub"},
			new Object[]{"Sriram","Varanasi","Blue Shield"},
			new Object[]{"Anusha","Madapati","Microsoft"},
		};
	}
	
	@Test(dataProvider="updateEmployeeData")
	public void updateEmployee(String fName, String lName, String companyName) {
		  System.out.println("Update: "+fName+" "+lName+" "+companyName);
	  }
	@DataProvider(name="updateEmployeeData")
	public Object[][] updateEmpData(){
		return new Object[][]{
			new Object[]{"Praneetha","Madapati","netLogic"},
			new Object[]{"Divya","Maringanti","Stubhub"},
			new Object[]{"Sriram","Varanasi","Blue Shield"},
			new Object[]{"Anusha","Madapati","Microsoft"},
		};
	}
	
	@Test(dataProvider="excelEmployeeData")
	public void excelEmployee(String fName, String lName, String companyName) {
		  System.out.println("ExcelData: "+fName+" "+lName+" "+companyName);
	  }
	@DataProvider(name="excelEmployeeData")
	public Object[][] getExcelData(){
		return ExcelUtility.getWorksheetData("C:\\Users\\Praneetha\\workspace\\TestData\\Employees.xlsx","InsertEmployeeData");
	}
	  @BeforeClass
	  public void beforeClass() {
		  System.out.println("Before class");
	  }

	  @AfterClass
	  public void afterClass() {
		  System.out.println("After class");
	  }
}
