package screens;

import task.Campaings_Task;
import task.Engine_Task;
import utility.HookSelenium;
import utility.UIOperation;

import java.util.concurrent.TimeUnit;

public class ModuleEngineScreen {
    public void click_iniciar_sesion() {
        UIOperation.giveClick(Engine_Task.btn_iniciar_sesion_engine);

    }

    public void click_total_pendientes() {
        HookSelenium.getSeleniumDriver().manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
        UIOperation.giveClick_selenium(Engine_Task.click_total_pendientes);
    }

    public void click_nro_solicitud() {
        HookSelenium.getSeleniumDriver().manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        UIOperation.giveClick_selenium(Engine_Task.click_nro_solicitud);
    }
    public void click_comite_enginee(){
        HookSelenium.getSeleniumDriver().manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        UIOperation.giveClick_selenium(Engine_Task.click_comite_credito);
    }
}
