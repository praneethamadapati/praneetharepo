package utils;

import java.io.FileInputStream;
import java.util.Iterator;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExcelUtility {
	
	public static Object[][] getWorksheetData(String filepath, String sheetName){
		
		Object[][] data = null;
		
		try {
			FileInputStream fis  = new FileInputStream(filepath);
			
			XSSFWorkbook workbook = new XSSFWorkbook(fis);
			
			XSSFSheet sheet = workbook.getSheet(sheetName);
			
			int rows = sheet.getLastRowNum()+1;
			int cols = sheet.getRow(0).getLastCellNum();
			
			data = new Object[rows][cols];
			
			//Iterator<Row> rowData = sheet.iterator();
			
			for(int i=0;i<rows;i++){
				Row r = sheet.getRow(i);
				for(int j=0;j<cols;j++){
					Cell c = r.getCell(j);
					data[i][j] = c.getStringCellValue();
				}
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		return data;
	}

}
