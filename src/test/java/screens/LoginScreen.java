package screens;

import org.openqa.selenium.By;
import org.openqa.selenium.chrome.ChromeDriver;
import task.Login_Task;
import task.Welcome_Task;
import utility.*;

import java.util.concurrent.TimeUnit;

public class LoginScreen {

    public void enter_onbording_appium(String user, String pass) {
        UIOperation.insertValue(Login_Task.texto, user);
        UIOperation.giveClick(Login_Task.btn_sign_in);
        UIOperation.insertValue(Login_Task.texto_pass, pass);
        UIOperation.giveClick(Login_Task.btn_sign_in);
    }
    public void ingresa_user_selenium(String user){
        HookSelenium.getSeleniumDriver().manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        UIOperation.insertValueSelenium(Login_Task.user,user);
        UIOperation.giveClick_selenium(Login_Task.siguiente_enginee);

    }
    public void ingresa_pass_selenium(String pass){
        HookSelenium.getSeleniumDriver().manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        UIOperation.insertValueSelenium(Login_Task.texto_pass_enginee,pass);
        UIOperation.giveClick_selenium(Login_Task.iniciar_sesion_engine);
    }


    public void conditionContinue() {
        boolean displayed = Hook.getDriver().findElement(txt_ConfigTerminada).isDisplayed();
        if (displayed) {
            UIOperation.waitAndClick(Welcome_Task.continuar, 30);
        }

    }


    public static Boolean isVisible(By element) {
        return Hook.getDriver().findElement(element).isDisplayed();
    }

    By btn_session = Element.Mobile_Element(Constantes.ID, "com.kata.formiik:id/fragmentCurrentSessionFloatingActionButton");
    By txt_usuario = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[1]/android.view.View/android.widget.EditText");
    By txt_password = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.view.View/android.widget.EditText");
    By btn_sign_in = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.widget.Button");

    By lbl_error_usuario = Element.Mobile_Element(Constantes.XPATH, "//*[@text='To sign in, start by entering a user ID.']");
    By lbl_error_password = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Please enter your password.']");
    By txt_ConfigTerminada = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Configuración del dispositivo completa.']");
    By lbl_error_user_or_pass = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[1]/android.view.View/android.view.View[2]/android.view.View/android.widget.TextView[1]");

    public void iniciar_session() {
        UIOperation.giveClick(btn_session);

    }

    public void enter_user_pass(String user, String pass) {
        UIOperation.insertValue(txt_usuario, user);
        UIOperation.insertValue(txt_password, pass);
    }

    public void enter_sign_in() {
        UIOperation.giveClick(btn_sign_in);
    }

    public String get_mensaje_error_usuario() {
        return UIOperation.getText(lbl_error_usuario);
    }

    public String get_mensaje_error_password() {
        return UIOperation.getText(lbl_error_password);
    }

    public String get_mensaje_error_user_or_pass() {
        return UIOperation.getText(lbl_error_user_or_pass);
    }


}
