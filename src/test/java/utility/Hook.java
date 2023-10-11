package utility;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.remote.MobileCapabilityType;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;

import java.net.URL;
import java.util.concurrent.TimeUnit;

public class Hook {

    private static AndroidDriver<WebElement> driver;

    @Before
    public void setUpAppium() throws Exception {
        DesiredCapabilities cap = new DesiredCapabilities();
        cap.setCapability("automationName", "UiAutomator2");
        cap.setCapability(MobileCapabilityType.PLATFORM_NAME, "Android");
        cap.setCapability(MobileCapabilityType.DEVICE_NAME, "Android");
        cap.setCapability(MobileCapabilityType.UDID, "emulator-5554");
        //cap.setCapability("appPackage", "com.vodqareactnative");
       // cap.setCapability("appActivity","com.vodqareactnative.MainActivity");
       // cap.setCapability(MobileCapabilityType.APP, System.getProperty("user.dir")+"//App//Formiik_New.apk");
        driver = new AndroidDriver<WebElement>(new URL(Constantes.URL_APPIUM), cap);
        driver.manage().timeouts().implicitlyWait(5000, TimeUnit.SECONDS);

    }

    @After
    public void tearDown(Scenario scenario) {
        try {

            String screenshot_name = scenario.getName().replaceAll(" ", "_");
            if (scenario.isFailed()) {
                TakesScreenshot ts = (TakesScreenshot) driver;
                byte[] screenshot = ts.getScreenshotAs(OutputType.BYTES);
                scenario.attach(screenshot, "img/png", screenshot_name);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        //driver.quit();
    }

    public static AppiumDriver getDriver() {
        return driver;
    }
}
