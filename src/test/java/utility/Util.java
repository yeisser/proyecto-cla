package utility;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;

import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;

public class Util {
    private WebDriver driver;
    public static void waitSleep(int i) {

        try {
            Thread.sleep(i);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }
    public static void implicitWait(int i) {
            Hook.getDriver().manage().timeouts().implicitlyWait(i, TimeUnit.SECONDS);


    }
    public static void fluentWait(int i){
        Wait<WebDriver> fwait=new FluentWait<WebDriver>(Hook.getDriver())
                .withTimeout(i,TimeUnit.SECONDS)
                .pollingEvery(2,TimeUnit.SECONDS)
                .ignoring(NoSuchElementException.class);
    }
}
