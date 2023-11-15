package task;

import org.openqa.selenium.By;
import utility.Constantes;
import utility.Element;

public class Welcome_Task {
    public static By btn_inciar = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.kata.formiik:id/themeSelectionSelectStartButton']");
    //public static By btn_siguiente = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.kata.formiik:id/fragmentOnBoardingNextButton']");
    public static By continuar = Element.Mobile_Element(Constantes.XPATH, "//*[@text='CONTINUAR']");
    public static By iniciar_sesion_engine=Element.Mobile_Element(Constantes.XPATH,"/html/body/app-root/app-login/div[2]/div[1]/div[2]/button");
    public static By btn_finalizar = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.kata.formiik:id/fragmentOnBoardingNextButton']");
    public static By btn_permisos = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.android.permissioncontroller:id/permission_allow_foreground_only_button']");
    public static By btn_permiso_calendario = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.android.permissioncontroller:id/permission_allow_button']");
    public static By btn_permiso_notificaciones = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.android.permissioncontroller:id/permission_allow_button']");
    public static By btn_permiso_gps = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.android.permissioncontroller:id/permission_allow_foreground_only_button']");
    public static By organizacion=Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.kata.formiik:id/fragmentTenantTextInputEditText']");
    public static By organizacion2=Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.kata.mobile:id/fragmentTenantTextInputEditText']");

    public static By festivos=Element.Mobile_Element(Constantes.XPATH, "//*[@text='Festivos en Perú']");
    public static By OK=Element.Mobile_Element(Constantes.XPATH, "//*[@text='OK']");



}
