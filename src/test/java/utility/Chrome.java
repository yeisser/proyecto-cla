package utility;

import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static java.time.Duration.ofSeconds;

public class Chrome {

    public static void getURL() {
        HookSelenium.getSeleniumDriver().get("https://qa.andes.engine.kata-software.com/");
        HookSelenium.getSeleniumDriver().manage().window().maximize();
    }


    public static void insertValue(By element, String value) {
        HookSelenium.getSeleniumDriver().findElement(element).clear();
        HookSelenium.getSeleniumDriver().findElement(element).sendKeys(value);
    }
    public static void insertValueWait(By element, String value, int tiempo) {
        long segundosEspera = ofSeconds(tiempo).getSeconds();
        WebDriverWait wait = new WebDriverWait(HookSelenium.getSeleniumDriver(),segundosEspera);
        //wait.until(ExpectedConditions.elementToBeClickable(element)).click();
        //Hook.getSeleniumDriver().findElement(element).clear();
        HookSelenium.getSeleniumDriver().findElement(element).sendKeys(value);
    }


    public static void giveClick(By element) {
        HookSelenium.getSeleniumDriver().findElement(element).click();
    }

    public static void waitAndClick(By element,int tiempo) {
        long segundosEspera = ofSeconds(tiempo).getSeconds();
        WebDriverWait wait = new WebDriverWait(HookSelenium.getSeleniumDriver(),segundosEspera);
        wait.until(ExpectedConditions.elementToBeClickable(element)).click();
    }
    public static void waitConditionalSecondElement(By element,int tiempo1,By element2,int tiempo2) {
//        long segundosEspera = Duration.ofSeconds(tiempo1).getSeconds();
//        WebDriverWait wait = new WebDriverWait(Hook.getSeleniumDriver(),segundosEspera);
//        wait.until(ExpectedConditions.visibilityOf((WebElement) element));
        Util.implicitWait(tiempo1);
        boolean displayed = HookSelenium.getSeleniumDriver().findElement(element).isDisplayed();
        if (displayed){
            waitAndClick(element2,tiempo2);
        }
    }

    public static void giveEnter(By element) {
        HookSelenium.getSeleniumDriver().findElement(element).sendKeys(Keys.ENTER);
    }

    public static String getText(By element) {
        return HookSelenium.getSeleniumDriver().findElement(element).getText();
    }
//    public boolean  isVisibleElement(WebElement element, long timeSeconds) {
//        boolean isVisible = false;
//        long segundosEspera = ofSeconds(timeSeconds).getSeconds();
//        WebDriverWait wait= new WebDriverWait(Hook.getSeleniumDriver(), segundosEspera);
//        isVisible = wait.until(ExpectedConditions.visibilityOf(element)) != null;
//        return isVisible;
//    }

    public static void retroceso(){
        HookSelenium.getSeleniumDriver().findElement(By.id("Value")).sendKeys(Keys.RETURN);
        HookSelenium.getSeleniumDriver().findElement(By.id("Value")).sendKeys(Keys.RETURN);
    }
    public static Boolean isVisible(By element)
    {
        return HookSelenium.getSeleniumDriver().findElement(element).isDisplayed();
    }

    public static void uiScrollableByText(String _scrollContainer, String _childElement, String _value) {
        MobileElement element = (MobileElement) HookSelenium.getSeleniumDriver().findElement(MobileBy.AndroidUIAutomator(
                "new UiScrollable(new UiSelector().resourceId(\"" + _scrollContainer + "\")).getChildByText("
                        + "new UiSelector().className(\"" + _childElement + "\"), \"" + _value + "\")"));

        element.click();
    }
    public static void uiwebViewByText(String _viewContainer,String _childElement,String _value) {
        MobileElement element = (MobileElement) HookSelenium.getSeleniumDriver().findElement(MobileBy.AndroidUIAutomator(                "new UiSelector(new UiSelector().resourceId(\"" + _viewContainer + "\")).getChildByText("
                + "new UiSelector().className(\"" + _childElement + "\"), \"" + _value + "\")"));

        element.click();
    }




}
