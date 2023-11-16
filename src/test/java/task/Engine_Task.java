package task;

import org.openqa.selenium.By;
import utility.Constantes;
import utility.Element;

public class Engine_Task {
    public static By btn_iniciar_sesion_engine = Element.Mobile_Element(Constantes.XPATH, "/html/body/app-root/app-login/div[2]/div[1]/div[2]/button");
    public static By click_total_pendientes = Element.Mobile_Element(Constantes.XPATH, "/html/body/app-root/app-dashboard/div/mat-drawer-container/mat-drawer-content/div/div[2]/app-dashboard-home/app-dashboard-metrics/section/app-dashboard-work-board/div/app-dashboard-task-simple-widget/div");
    public static By click_nro_solicitud = Element.Mobile_Element(Constantes.XPATH, "//*[@text='A6D6A282-2628-4B25-BDA2-FC9641F0C838']");
    public static By click_comite_credito = Element.Mobile_Element(Constantes.XPATH, "//*[@id=\"mat-tab-content-1-0\"]/div/div/div[2]/div/div[2]/div[2]/div[2]");


}
