package utility;


import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.remote.DesiredCapabilities;

import java.net.URL;
import java.util.concurrent.TimeUnit;

public class HookSelenium {
    private static ChromeDriver seleniumDriver;


    @Before
    public void setUpSelenium() throws Exception {
        System.setProperty("webdriver.chrome.driver","src/test/resources/drivers/chromedriver.exe");
        seleniumDriver = new ChromeDriver();
    }
    @After
    public void tearDown(Scenario scenario) {
        try {

            String screenshot_name = scenario.getName().replaceAll(" ", "_");
            if (scenario.isFailed()) {
                TakesScreenshot ts = (TakesScreenshot) seleniumDriver;
                byte[] screenshot = ts.getScreenshotAs(OutputType.BYTES);
                scenario.attach(screenshot, "img/png", screenshot_name);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        //driver.quit();
    }

    public static ChromeDriver getSeleniumDriver() {
        return seleniumDriver;
    }

}
