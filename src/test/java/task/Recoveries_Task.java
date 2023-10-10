package task;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import utility.Constantes;
import utility.Element;
import utility.Hook;

public class Recoveries_Task {

    public Recoveries_Task(){
    }
    public static By btn_new_orders = Element.Mobile_Element(Constantes.ID, "com.kata.formiik:id/activityOrdersNewOrderFloatingActionButton");
    public static By btn_new_orders2 = Element.Mobile_Element(Constantes.ID, "com.kata.mobile:id/activityOrdersNewOrderFloatingActionButton");
    public static By text_UltimaSincro = Element.Mobile_Element(Constantes.XPATH, "//*[contains(@text,'Última sincronización')]");
    public static By btn_cobranza = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Cobranza']");
    public static By btn_credito = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Credito']");
    public static By opcion_Menu;
    public static By  opcionMenu(String opcion){
//        String xpathOpcion = String.format("//*[@text='%s']", opcion);
//        opcion_Menu = Hook.getDriver().findElement(By.xpath(xpathOpcion));
//        return opcion_Menu;
        String xpathOpcion = String.format("//*[@text='%s']", opcion);
        return By.xpath(xpathOpcion);
    }
    public static WebElement select_TipoDocumento;
    public static WebElement selectDocumento(String TipoDocumento){
        String xpathOpcion = String.format("//*[@text='%s']", TipoDocumento);
        select_TipoDocumento = Hook.getDriver().findElement(By.xpath(xpathOpcion));
        return select_TipoDocumento;
    }
    public static By btn_siguiente = Element.Mobile_Element(Constantes.XPATH, "//*[@text='SIGUIENTE']");
    public static By opt_gestion_mora = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Gestion_Mora']");

    public static By btn_tipo_documento = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.Spinner");
    public static By btn_ruc = Element.Mobile_Element(Constantes.XPATH, "//*[@text='RUC']");
    public static By btn_navegar_arriba = Element.Mobile_Element(Constantes.XPATH, "//*[@content-desc='Navegar hacia arriba']");
    public static By txt_dni = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.kata.formiik:id/textedit']");
    public static By btn_consulta_credito = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[4]/android.widget.LinearLayout/android.widget.ImageButton");
    //public static By btn_consulta_credito = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.kata.formiik:id/widget_update']");
    public static By btn_ok = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='android:id/button3']");
    public static By btn_opcion_desplegable_creditos = Element.Mobile_Element(Constantes.XPATH, "//*[@text=' FD. 17/01/2023 - S/ 16512.43 - Atraso: 44']");
    public static By button_consultar_cliente = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[9]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By button_datos_del_credito = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Datos del Crédito']");
    public static By button_ultimas_gestiones = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[8]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By txtview_gestiones = Element.Mobile_Element(Constantes.XPATH, "//*[@text='El crédito no cuenta con gestiones realizadas']");
    public static By button_campo_celular_gestion = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Gestión']");
    public static By opcion_llamada = Element.Mobile_Element(Constantes.XPATH, "//android.widget.ListView/android.widget.LinearLayout[2]/android.widget.TextView");
    public static By cb_visita_a_titular = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Visita a Titular']");
    public static By btn_geolocalizacion = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.kata.formiik:id/widget_gps']");
    public static By button_posicion_consolidada = Element.Mobile_Element(Constantes.XPATH, "//com.kata.formiik:id/containerForm");
    public static By btn_session = Element.Mobile_Element(Constantes.ID, "com.kata.formiik:id/fragmentCurrentSessionFloatingActionButton");

    public static By opt_otros = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Otros']");
    public static By txt_nombre_contacto = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Nombre del contacto']");
    public static By txt_relacion_titular = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Relación con titular']");
    public static By btn_resultados_gestion = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[9]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.AutoCompleteTextView");
    public static By txt_buscar_coincidencia = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Compromiso de pago']");
    public static By txtview_celular_cliente = Element.Mobile_Element(Constantes.XPATH, "//android.view.ViewGroup/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.EditText");
    public static By boton_llamar = Element.Mobile_Element(Constantes.XPATH, "//*[@text='LLAMAR']");
    public static By btn_crear_recodatorio = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[7]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageButton");
    public static By txt_geoposicion = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.TextView");
    public static By chk_mensaje_advertencia = Element.Mobile_Element(Constantes.XPATH, "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[10]/android.widget.LinearLayout/android.widget.CheckBox");
    public static By lbl_digitalizacion = Element.Mobile_Element(Constantes.XPATH, "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[11]/android.widget.LinearLayout/android.widget.TextView");
    public static By btn_continuar = Element.Mobile_Element(Constantes.ID, "com.kata.formiik:id/activityDownloadContinueButton");
    public static By btn_click_si = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.widget.Button[2]");
    public static By finaliza_llamada = Element.Mobile_Element(Constantes.XPATH, "//android.widget.ImageButton[@content-desc=\"Finalizar llamada\"]");
    public static By txt_celular = Element.Mobile_Element(Constantes.ID, "com.kata.formiik:id/textedit");
    public static By opt_option_tipo_contacto = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Elegir una opción']");
    public static By desplegable_accion = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Elegir una opción']");
    public static By txtview_celular_cliente_nueve_digitos = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[4]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText");
    public static By lbl_error_user_or_pass = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[1]/android.view.View/android.view.View[2]/android.view.View/android.widget.TextView[1]");
    public static By btn_consultar_cartera = Element.Mobile_Element(Constantes.XPATH, "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By btn_tabla_mora = Element.Mobile_Element(Constantes.XPATH, "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[6]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By btn_click_en_ok = Element.Mobile_Element(Constantes.XPATH, "//androidx.appcompat.widget.LinearLayoutCompat/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button");
    public static By opt_reporte_mora = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.ScrollView/android.widget.RadioGroup/android.widget.RadioButton[2]");

    public static By btn_guardar_recordatorio = Element.Mobile_Element(Constantes.XPATH, "//android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView");
    public static By btn_terminar = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView");
    public static By btn_cantidad_fotos = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[13]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Spinner/android.widget.LinearLayout/android.widget.TextView");
    public static By btn_crear_evento = Element.Mobile_Element(Constantes.XPATH, "//android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.ImageButton");


    public static By txt_evento = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.EditText[1]");
    public static By txt_valor_resultados_gestion = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[10]/android.widget.LinearLayout");
    public static By hora_inicio = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[2]/android.widget.LinearLayout[1]/android.widget.LinearLayout");
    public static By hora_fin_2 = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[3]/android.widget.LinearLayout[1]/android.widget.TextView");
    public static By clic_cancelar_evento = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.Button[1]");
    public static By clic_aceptar_evento = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.Button[2]");

    public static By txt_ingresa_monto_cero = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[8]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText");
    public static By btn_crear_confirmacion = Element.Mobile_Element(Constantes.XPATH, "//*[@text='CREAR']");
    public static By btn_MenuTipoDocumento = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Seleccionar elemento']");
    public static By btn_dni = Element.Mobile_Element(Constantes.XPATH, "//*[@text='DNI']");

    public static By desplegable_credito = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.TextView");
    public static By btn_nuevos_datos_contacto = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout[@content-desc=\"Nuevos datos de contacto\"]/android.widget.LinearLayout/android.widget.TextView");
    public static By btn_ce = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Carné de extranjería']");

    public static By btn_selecciona_tipo_celular = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Spinner/android.widget.LinearLayout/android.widget.TextView");
    public static By cbo_tipo_documento = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Elegir una opción']");
    public static By btn_click_desplegable_celular = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.TextView");
    public static By btn_ubicacion_mapa = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[10]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By btn_guarda_ubicacion = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.Button");

    public static By buton_saldo_deudor = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[5]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By button_garantias_credito = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[10]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By input_NumDocumento = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.view.View[1]/android.view.View/android.view.View/android.widget.EditText");
    public static By checkbox_Autorizacion = Element.Mobile_Element(Constantes.CLASSNAME, "android.widget.CheckBox");
    public static By radio_AutotizarPublicidad = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[1]/android.widget.RadioButton");
    public static By btn_ConsultarCliente = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[5]/android.view.View/android.widget.Button");
    public static By btn_AceptarModalConsultaCliente = Element.Mobile_Element(Constantes.XPATH, "//android.widget.Button");
    public static By btn_consultarPosicionConsolidada = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.view.View/android.widget.Button");
    public static By btn_AceptarModalPosicionConsolidada = Element.Mobile_Element(Constantes.XPATH, "//android.widget.Button");
    public static By txt_Campana = Element.Mobile_Element(Constantes.XPATH, "//*[@text='CAMPAÑA']");
    public static By menu_MantCliente = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Mantenimiento cliente']");


}
//android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.ScrollView/android.widget.RadioGroup/android.widget.RadioButton[2]
//android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.compose.ui.platform.m1/android.view.View/android.view.View/android.view.View[2]/android.view.View[3]/android.view.View[1]/android.widget.RadioButton
//android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.compose.ui.platform.m1/android.view.View/android.view.View/android.view.View[2]/android.view.View[3]/android.view.View[1]/android.widget.TextView