package automationframeworks;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

public class TravelocityHomePage extends TravelocityBasePage{
	
	private By flightTab = By.id("tab-flight-tab");
	private By oneWay = By.id("flight-type-one-way");
	private By returnWay = By.id("");
	private By origin = By.id("flight-origin");
	private By dest = By.id("flight-destination");
	private By travelDate = By.id("flight-departing");
	private By returnDate = By.id("");
	private By noPassengers = By.id("flight-adults");
	private By advancedOptions = By.linkText("Advanced options");
	
	//private By searchby = By.id("search-button");
	
	@FindBy(how = How.ID, using="search-button")
	private WebElement searchBy;
	
	
	public TravelocityHomePage(WebDriver driver){
		super(driver);
		PageFactory.initElements(driver, this);
	}
	
	public void clickOnFlightsTab(){
		
		driver.findElement(flightTab).click();
	}
	
	public void selectOneWay(){
		driver.findElement(oneWay).click();
	}
	
	public void enterOriginCity(String city, String fullCity ){
		fillSuggestionTextbox(origin, city, fullCity);
		
	}
	
	public void enterDestCity(String city, String fullCity){
		fillSuggestionTextbox(dest, city, fullCity);
	}
	
	public void selectDate(String date){
		driver.findElement(travelDate).sendKeys(date);
	}
	
	public void selectPassengers(int count){
		WebElement adultSel = driver.findElement(noPassengers);
		Select adults = new Select(adultSel);
		adults.selectByValue(Integer.toString(count));
		
	}
	
	public TravelocityResultsPage search() throws InterruptedException{
		click(searchBy);
		Thread.sleep(10000);
		TravelocityResultsPage rp = PageFactory.initElements(driver, TravelocityResultsPage.class);
		return rp;
	}
	
	
	
	

}