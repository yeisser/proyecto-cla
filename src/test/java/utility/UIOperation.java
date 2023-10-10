package utility;

import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.nativekey.AndroidKey;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import java.awt.event.KeyEvent;


public class UIOperation {

    public static void insertValue(By element, String value) {
        Hook.getDriver().findElement(element).clear();
        Hook.getDriver().findElement(element).sendKeys(value);
    }

    public static void giveClick(By element) {
        Hook.getDriver().findElement(element).click();
    }
    public static void giveEnter(By element) {
        Hook.getDriver().findElement(element).sendKeys(Keys.ENTER);
    }

    public static String getText(By element) {
        return Hook.getDriver().findElement(element).getText();
    }

    public static void retroceso(){
        Hook.getDriver().findElement(By.id("Value")).sendKeys(Keys.RETURN);
        Hook.getDriver().findElement(By.id("Value")).sendKeys(Keys.RETURN);
    }
    public static Boolean isVisible(By element)
    {
        return Hook.getDriver().findElement(element).isDisplayed();
    }

    public static void uiScrollableByText(String _scrollContainer, String _childElement, String _value) {
        MobileElement element = (MobileElement) Hook.getDriver().findElement(MobileBy.AndroidUIAutomator(
                "new UiScrollable(new UiSelector().resourceId(\"" + _scrollContainer + "\")).getChildByText("
                        + "new UiSelector().className(\"" + _childElement + "\"), \"" + _value + "\")"));

        element.click();
    }
    public static void uiwebViewByText(String _viewContainer,String _childElement,String _value) {
        MobileElement element = (MobileElement) Hook.getDriver().findElement(MobileBy.AndroidUIAutomator(                "new UiSelector(new UiSelector().resourceId(\"" + _viewContainer + "\")).getChildByText("
                        + "new UiSelector().className(\"" + _childElement + "\"), \"" + _value + "\")"));

        element.click();
    }

}
