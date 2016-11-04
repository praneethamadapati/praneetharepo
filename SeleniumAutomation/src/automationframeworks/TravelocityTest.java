package automationframeworks;

import java.util.List;
import java.util.Set;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import automationtesting.BaseBrowser;

public class TravelocityTest {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub

		String url = "http://www.travelocity.com";
		WebDriver driver = BaseBrowser.getBrowser("chrome", url);
	
		//driver.get();

		

		// driver.findElement(By.partialLinkText("Credit Cards"));

		WebElement flightTab = (WebElement)((JavascriptExecutor)driver).executeScript("return document.getElementById('tab-flight-tab');");
				//driver.findElement(By.id("tab-flight-tab"));
		flightTab.click();
		Thread.sleep(10000);

		WebElement oneWay = driver.findElement(By.id("flight-type-one-way"));
		Actions builder = new Actions(driver);
		builder.moveToElement(oneWay).click().build().perform();
		//oneWay.click();
		Thread.sleep(5000);

		String actualValue = "Toronto, ON, Canada (YYZ - Pearson Intl.)";

		WebElement from = driver.findElement(By.id("flight-origin"));
		from.clear();
		// from.sendKeys("y");
		from.sendKeys(actualValue);

		// Thread.sleep(2000);

		// identify the container where the results are shown
		/*
		 * WebElement fromSuggContainer =
		 * driver.findElement(By.xpath("//div[@id='typeahead-list']//ul"));
		 * 
		 * // identify the elements from the container List<WebElement>
		 * fromSuggestions = fromSuggContainer.findElements(By.tagName("li"));
		 * 
		 * for(WebElement elem: fromSuggestions){
		 * System.out.println(elem.getText());
		 * if(elem.getText().equals(actualValue)){ elem.click(); break; } }
		 */
		WebElement to = driver.findElement(By.id("flight-destination"));
		to.clear();
		to.sendKeys("San Francisco, CA (SFO-San Francisco Intl.)");
		Thread.sleep(2000);

		// flight-departing
		WebElement depDate = driver.findElement(By.id("flight-departing"));
		depDate.clear();
		depDate.click();

		WebElement octCal = driver.findElement(By
				.xpath("//table[@class='datepicker-cal-weeks']//caption[text()='OCT 2016']//following-sibling::tbody"));
		// depDate.sendKeys("11/05/2016");

		List<WebElement> dates = octCal.findElements(By.tagName("td"));

		for (WebElement elem : dates) {
			if (elem.getText().contains("28")) {
				elem.click();
				break;
			}
		}

		Thread.sleep(2000);

		// Select
		WebElement adultSel = driver.findElement(By.id("flight-adults"));
		Select adults = new Select(adultSel);
		adults.selectByIndex(3);
		Thread.sleep(2000);

		WebElement nonStop = driver.findElement(By.id("advanced-flight-nonstop"));
		System.out.println(nonStop.isDisplayed());
		// advanced options -- Advanced options
		WebElement advOptions = driver.findElement(By.linkText("Advanced options"));
		advOptions.click();
		//Thread.sleep(2000);

		// non stop
		WebDriverWait wait = new WebDriverWait(driver, 25);
		nonStop = wait.until(ExpectedConditions.presenceOfElementLocated(By.id("advanced-flight-nonstop")));
		//nonStop = driver.findElement(By.id("advanced-flight-nonstop"));
		boolean isSelected = nonStop.isSelected();
		System.out.println("is non stop checked? - " + isSelected);

		if (!isSelected) {
			nonStop.click();
		}
		Thread.sleep(2000);
		System.out.println("is non stop checked now? - " + nonStop.isSelected());

		WebElement search = driver.findElement(By.id("search-button"));
		search.click();

		Thread.sleep(10000);

		String parentHandle = driver.getWindowHandle();
		System.out.println("parent travelocity id is " + parentHandle);

		driver.findElement(
				By.xpath("//div[@id='IM_expedia_orange_borderless_logos']//img[@alt='Expedia']//ancestor::td//input"))
				.click();
		Thread.sleep(1000);
		driver.findElement(
				By.xpath("//div[@id='IM_expedia_orange_borderless_logos']//img[@alt='CheapOair']//ancestor::td//input"))
				.click();
		Thread.sleep(1000);
		// at this point, expedia is also opened
		driver.findElement(By.xpath("//div[@id='IM_expedia_orange_borderless_logos']//a[text()='GO']")).click();

		Thread.sleep(5000);

		Set<String> allHandles = driver.getWindowHandles();
		System.out.println("window handles are " + allHandles);
		for (String s : allHandles) {
			if (!s.equals(parentHandle)) {
				driver.switchTo().window(s);
				if (driver.getCurrentUrl().contains("cheapoair")) {
					System.out.println("in cheap o air");
					System.out.println(driver.getTitle());
					System.out.println(driver.getCurrentUrl());
					driver.close();

				} else {
					System.out.println("dep airport - " + driver.findElement(By.id("departureAirport")).getText());
					System.out.println("expedia");
					System.out.println(driver.getTitle());
					System.out.println(driver.getCurrentUrl());
					driver.close();
				}
				break;
			}
		}

		driver.switchTo().window(parentHandle);
		System.out.println("parent is " + driver.getTitle());

	}

}