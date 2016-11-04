package automationframeworks;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class TravelocityBasePage {
	
	public WebDriver driver;
	
	public TravelocityBasePage(WebDriver driver){
		this.driver = driver;
	}
	
	public String getTitle(){
		return driver.getTitle();
	}
	
public void fillSuggestionTextbox(By textbox, String partialValue, String actualValue){
		
		driver.findElement(textbox).sendKeys(actualValue);
		/*
		WebElement fromSuggContainer =
				 driver.findElement(By.xpath("//div[@id='typeahead-list']//ul"));
				 
				 // identify the elements from the container List<WebElement>
		List<WebElement> fromSuggestions = fromSuggContainer.findElements(By.tagName("li"));
				 
				 for(WebElement elem: fromSuggestions){
				 System.out.println(elem.getText());
				 if(elem.getText().equals(actualValue)){ elem.click(); break; } }
				 */
	}

public void click(WebElement e){
	e.click();
}

}