package screens;

import org.openqa.selenium.By;
import utility.Element;
import utility.UIOperation;
import utility.Constantes;
import utility.Hook;

public class HomeScreen {


    By btn_continuar = Element.Mobile_Element(Constantes.XPATH,"//*[@text='CONTINUAR']");
    By lbl_recordar_tarde = Element.Mobile_Element(Constantes.XPATH,"//*[@text='RECORDAR MÁS TARDE']");
    By lbl_title_ordenes = Element.Mobile_Element(Constantes.XPATH,"//*[@text='Órdenes']");
    By icon_progress_bar = Element.Mobile_Element(Constantes.XPATH,"//*[@text='Eliminando órdenes borradas…']");
    By menu_home = Element.Mobile_Element(Constantes.XPATH,"//*[@content-desc='Navegar hacia arriba']");
    By sub_menu_cerrar_session = Element.Mobile_Element(Constantes.XPATH,"//*[@text='Cerrar Sesión']");
    By lbl_cerrar_session_ok = Element.Mobile_Element(Constantes.ID,"android:id/button1");
    By btn_no = Element.Mobile_Element(Constantes.XPATH,"//*[@text='NO']");

    public void enter_skyp()
    {
        UIOperation.giveClick(btn_continuar);
        UIOperation.giveClick(lbl_recordar_tarde);
    }

    public String get_title_home()
    {
        String value = UIOperation.getText(lbl_title_ordenes);
        return value;
    }

    public Boolean isVisible_progress_bar()
    {
        System.out.println("valor is: "+UIOperation.isVisible(icon_progress_bar));
        return UIOperation.isVisible(icon_progress_bar);
    }

    public void close_session_app()
    {
        UIOperation.giveClick(menu_home);
        UIOperation.giveClick(btn_no);
        //UIOperation.giveClick(sub_menu_cerrar_session);
        //UIOperation.giveClick(lbl_cerrar_session_ok);
    }




}
