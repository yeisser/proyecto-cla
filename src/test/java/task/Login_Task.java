package task;

import org.openqa.selenium.By;
import utility.Constantes;
import utility.Element;

public class Login_Task {

    public static By texto = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='i0116']");
    public static By user=Element.Mobile_Element(Constantes.XPATH,"//*[@id='i0116']");
    public static By siguiente_enginee = Element.Mobile_Element(Constantes.XPATH, "//*[@id='idSIButton9']");
    public static By iniciar_sesion_engine = Element.Mobile_Element(Constantes.XPATH, "/html/body/div/form[1]/div/div/div[2]/div[1]/div/div/div/div/div/div[3]/div/div[2]/div/div[4]/div[2]/div/div/div/div/input");
    public static By texto_pass = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='i0118']");
    public static By texto_pass_enginee = Element.Mobile_Element(Constantes.XPATH, "//*[@id=\"i0118\"]");
    public static By lbl_error_usuario = Element.Mobile_Element(Constantes.XPATH, "//*[@text='To sign in, start by entering a user ID.']");
    public static By lbl_error_password = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Please enter your password.']");
    public static By btn_sign_in = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='idSIButton9']");

    //public static By btn_si_mantener_sesion = Element.Mobile_Element(Constantes.XPATH, "//*[@id='screenshotContainer']");
    public static By btn_si_mantener_sesion = Element.Mobile_Element(Constantes.XPATH, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout");

}
