package screens;


import io.appium.java_client.TouchAction;
import io.appium.java_client.touch.offset.PointOption;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import task.Login_Task;
import task.Recoveries_Task;
import utility.Hook;
import utility.UIOperation;
import utility.Util;


public class recoveries_screens{


    public void enter_user_pass(String user, String pass) {
        //UIOperation.insertValue(txt_usuario,user);
        //UIOperation.giveClick(btn_sign_in);
        //UIOperation.insertValue(txt_password,pass);
    }



    public void enter_nueva_orden() {
        UIOperation.giveClick(Recoveries_Task.btn_new_orders);

    }
    public void enter_nueva_orden2() {
//        Util.waitSleep(250);
//        UIOperation.waitAndClick(Recoveries_Task.btn_new_orders2,120);
        UIOperation.waitConditionalSecondElement(
                Recoveries_Task.text_UltimaSincro,180,
                Recoveries_Task.btn_new_orders2,30);

    }

    public void click_cobranza() {
        UIOperation.giveClick(Recoveries_Task.btn_cobranza);
    }
    public void click_credito() {
        UIOperation.waitAndClick(Recoveries_Task.btn_credito,15);
    }
    public void click_TipoFormulario(String opcion) {
//        By opcionMenuElement = (By) Recoveries_Task.opcionMenu(opcion);
//        UIOperation.waitAndClick(opcionMenuElement,15);
//        Util.implicitWait(10);
//        Recoveries_Task.opcionMenu(opcion).click();
//        UIOperation.waitAndClick(Recoveries_Task.btn_siguiente,10);
        By opcionMenuElement = Recoveries_Task.opcionMenu(opcion);
        WebElement elemento = Hook.getDriver().findElement(opcionMenuElement);
        elemento.click();
        UIOperation.waitAndClick(Recoveries_Task.btn_siguiente, 10);

    }


    public void enter_user(String user) {
        //UIOperation.insertValue(txt_usuario,user);
    }

    public void enter_pass(String pass) {
        // UIOperation.insertValue(txt_password,pass);
    }

    public void enter_sign_in() {
        UIOperation.giveClick(Login_Task.btn_sign_in);
    }

    public void click_siguiente() {
        UIOperation.giveClick(Recoveries_Task.btn_siguiente);
    }
    public void click_siguiente2() {
        UIOperation.waitAndClick(Recoveries_Task.btn_siguiente,15);
    }

    public void click_consultar_catera() {
        UIOperation.giveClick(Recoveries_Task.btn_consultar_cartera);
    }

    public void click_tabla_clientes_mora() {
        UIOperation.giveClick(Recoveries_Task.btn_tabla_mora);
    }

    public void click_en_ok() {
        UIOperation.giveClick(Recoveries_Task.btn_click_en_ok);
    }

    public void click_crear_seccion_confirmacion() {

        UIOperation.giveClick(Recoveries_Task.btn_crear_confirmacion);
    }

    public void click_cb_tipo_documento() {
        UIOperation.giveClick(Recoveries_Task.cbo_tipo_documento);
    }

    public void click_tipo_documento() {
        UIOperation.giveClick(Recoveries_Task.btn_tipo_documento);
    }

    public void click_dni() {
        UIOperation.giveClick(Recoveries_Task.btn_dni);
    }

    public void click_crear_recodatorio() {
        UIOperation.giveClick(Recoveries_Task.btn_crear_recodatorio);
    }

    public void click_guarda_event() {
        UIOperation.giveClick(Recoveries_Task.btn_guardar_recordatorio);
    }

    public void click_termino_evento() {
        UIOperation.giveClick(Recoveries_Task.btn_terminar);
    }

    public void click_cantidad_fotos() {
        UIOperation.giveClick(Recoveries_Task.btn_cantidad_fotos);
    }

    public void click_nuevo_evento() {
        UIOperation.giveClick(Recoveries_Task.btn_crear_evento);
    }
    public void click_crear_evento() {
        UIOperation.waitAndClick(Recoveries_Task.btn_crear_confirmacion, 15);
    }

    public void consultar_creditos() {
        UIOperation.giveClick(Recoveries_Task.btn_consulta_credito);
    }

    public String get_validar_desplegable_creditos() {
        return UIOperation.getText(Recoveries_Task.desplegable_credito);
    }

    public void validar_buton_consultar_cliente() {
        UIOperation.giveClick(Recoveries_Task.button_consultar_cliente);
    }

    public void validar_tres_ultimas_gestiones() {
        UIOperation.giveClick(Recoveries_Task.button_datos_del_credito);
        UIOperation.giveClick(Recoveries_Task.button_ultimas_gestiones);
    }

    public void validar_campo_celular_pestaña_gestion() {
        UIOperation.giveClick(Recoveries_Task.button_datos_del_credito);
        UIOperation.giveClick(Recoveries_Task.button_campo_celular_gestion);
    }

    public void validar_opcion_llamada() {
        UIOperation.giveClick(Recoveries_Task.desplegable_accion);
        UIOperation.giveClick(Recoveries_Task.opcion_llamada);
    }

    public void validar_boton_llamar() {
        UIOperation.giveClick(Recoveries_Task.boton_llamar);
        UIOperation.giveClick(Recoveries_Task.finaliza_llamada);
    }

    public void validar_garantias_credito_seleccionado() {
        UIOperation.giveClick(Recoveries_Task.button_garantias_credito);
    }

    public void validar_saldo_deudor() {
        UIOperation.giveClick(Recoveries_Task.button_datos_del_credito);
        UIOperation.giveClick(Recoveries_Task.buton_saldo_deudor);
    }

    public void validar_buton_posicion_consolidada() {

        UIOperation.giveClick(Recoveries_Task.button_posicion_consolidada);
    }

    public void click_buton_desplegable_creditos() {
        UIOperation.giveClick(Recoveries_Task.btn_opcion_desplegable_creditos);
    }

    public void validar_tres_dias() {
        UIOperation.getText(Recoveries_Task.btn_opcion_desplegable_creditos).toString();
    }

    public void click_buton_ok() {
        UIOperation.giveClick(Recoveries_Task.btn_ok);
    }

    public void click_resultado_gestion() {
        UIOperation.giveClick(Recoveries_Task.btn_resultados_gestion);
    }

    public void seleccion_pestana_datos_contactos() {
        UIOperation.giveClick(Recoveries_Task.btn_nuevos_datos_contacto);
    }

    public void selecciona_tipo_celular() {
        UIOperation.giveClick(Recoveries_Task.btn_selecciona_tipo_celular);
    }

    public void hago_click_desplegable_celular() {
        UIOperation.giveClick(Recoveries_Task.btn_click_desplegable_celular);
    }

    public void hago_click_ubicacion_mapa() {
        UIOperation.giveClick(Recoveries_Task.btn_ubicacion_mapa);
    }

    public void guarda_ubicacion() {
        UIOperation.giveClick(Recoveries_Task.btn_guarda_ubicacion);
    }

    public void ingresa_dni(String dni) {
        UIOperation.insertValue(Recoveries_Task.txt_dni, dni);
    }

    public void ingresa_celular_contacto(String celular) {
        UIOperation.insertValue(Recoveries_Task.txtview_celular_cliente_nueve_digitos, celular);
    }

    public void ingresa_evento(String evento) {
        UIOperation.insertValue(Recoveries_Task.txt_evento, evento);

    }
    public void click_aceptar_evento() {
        UIOperation.giveClick(Recoveries_Task.clic_aceptar_evento);
    }
    public void espera_un_min() {
        Util.implicitWait(50);
    }
    public void click_hora_inicio() {
        UIOperation.giveClick(Recoveries_Task.hora_inicio);

    }
    public void click_hora_fin_1() {
        UIOperation.giveClick(Recoveries_Task.hora_fin_2);

    }
    public void click_cancelar_Evento() {
        UIOperation.giveClick(Recoveries_Task.clic_cancelar_evento);
    }
    public void ingresa_valor_resultados_gestion() {
        UIOperation.giveClick(Recoveries_Task.txt_valor_resultados_gestion);
    }
    public void ingresa_monto_cero(String valor) {
        UIOperation.insertValue(Recoveries_Task.txt_ingresa_monto_cero, valor);
    }
    public void ingresa_valor_temporal_resultados_gestion(String valor) {
        UIOperation.insertValue(Recoveries_Task.txt_buscar_coincidencia, valor);
    }
    public void ingresa_accion(String accion) {
        UIOperation.giveClick(Recoveries_Task.desplegable_accion);

        if (accion.equals("Visita a Titular")) {
            UIOperation.giveClick(Recoveries_Task.cb_visita_a_titular);
        }
    }
    public void click_tipo_contactos() {
        UIOperation.giveClick(Recoveries_Task.opt_option_tipo_contacto);
    }
    public void selecciona_otros_opcion_tipo_contacto() {
        UIOperation.giveClick(Recoveries_Task.opt_otros);
    }
    public void ingresa_celular(String celular) {
        UIOperation.insertValue(Recoveries_Task.txt_celular, celular);
    }
    public void click_ce() {
        UIOperation.giveClick(Recoveries_Task.btn_ce);
    }
    public void click_ruc() {
        UIOperation.giveClick(Recoveries_Task.btn_ruc);
    }
    public void seleccionar_geopocision_gestion() {
        UIOperation.giveClick(Recoveries_Task.btn_geolocalizacion);
    }
    public void seleccino_tipo_contactos(String lista) {
        UIOperation.giveClick(Recoveries_Task.btn_geolocalizacion);
    }
    public void click_gesion_mora() {
        try{
            UIOperation.giveClick(Recoveries_Task.opt_gestion_mora);
        }catch (Exception exc){
            exc.printStackTrace();
        }

    }

    public void click_reporte_mora() {
        UIOperation.giveClick(Recoveries_Task.opt_reporte_mora);
    }

    public void click_navegar_arriba() {
        UIOperation.giveClick(Recoveries_Task.btn_navegar_arriba);
        UIOperation.giveClick(Recoveries_Task.btn_click_si);
    }

    public String get_mensaje_error_usuario() {
        return UIOperation.getText(Login_Task.lbl_error_usuario);
    }

    public String get_mensaje_ultimas_gestiones() {
        return UIOperation.getText(Recoveries_Task.txtview_gestiones);
    }

    public String get_mensaje_gestiones_no_realizadas() {
        return UIOperation.getText(Recoveries_Task.txtview_gestiones);
    }

    public String get_campo_geoposicion() {
        return UIOperation.getText(Recoveries_Task.txt_geoposicion);
    }

    public String get_campo_nombre_contacto() {
        return UIOperation.getText(Recoveries_Task.txt_nombre_contacto);
    }

    public String valida_mensaje_advertencia() {
        return UIOperation.getText(Recoveries_Task.chk_mensaje_advertencia);
    }

    public String get_campo_relacion_titular() {
        return UIOperation.getText(Recoveries_Task.txt_relacion_titular);

    }

    public String get_campo_digitalizacion() {
        return UIOperation.getText(Recoveries_Task.lbl_digitalizacion);
    }

    public String get_celular_cliente() {
        return UIOperation.getText(Recoveries_Task.txtview_celular_cliente);
    }

    public String get_celular_cliente_nueve_digitos() {
        return UIOperation.getText(Recoveries_Task.txtview_celular_cliente_nueve_digitos);
    }

    public String get_mensaje_error_password() {
        return UIOperation.getText(Login_Task.lbl_error_password);
    }

    public String get_mensaje_error_user_or_pass() {
        return UIOperation.getText(Recoveries_Task.lbl_error_user_or_pass);
    }

    public void seleccionTipoDocumento(String TipoDocumento, String NumDocumento){
        UIOperation.waitAndClick(Recoveries_Task.btn_MenuTipoDocumento,180);
        By opcionTipoDocumento = Recoveries_Task.opcionMenu(TipoDocumento);
        UIOperation.waitAndClick(opcionTipoDocumento,180);
        Util.implicitWait(60);
        //UIOperation.insertValueWait(Recoveries_Task.input_NumDocumento, NumDocumento, 30);
        UIOperation.insertValue(Recoveries_Task.input_NumDocumento, NumDocumento);

    }
    public void autorizaTratamientoDatos(){
        UIOperation.waitAndClick(Recoveries_Task.checkbox_Autorizacion,15);
    }
    public void autorizaPublicidad(){
        UIOperation.waitAndClick(Recoveries_Task.radio_AutotizarPublicidad,15);
    }
    public void consultaCliente()throws InterruptedException{
        UIOperation.waitAndClick(Recoveries_Task.btn_ConsultarCliente,15);
    }
    public void aceptarModalConsultaCliente() throws InterruptedException {
        TouchAction action = new TouchAction(Hook.getDriver());
        action.tap(PointOption.point(844, 1240)).perform();
    }
    public void consultaPosicionConsolidada(){
        UIOperation.waitAndClick(Recoveries_Task.btn_consultarPosicionConsolidada,30);
    }
    public void aceptarModalPosicionConsolidada() throws InterruptedException {
//        String iframeContext  = "com.kata.formiik:id/action_bar_root";
//        Hook.getDriver().switchTo().frame(iframeContext);
//        Hook.getDriver().findElement(ModuleCampaingsStep.lbl_si).click();
        Thread.sleep(15);

        TouchAction action = new TouchAction(Hook.getDriver());
        action.tap(PointOption.point(844, 1240)).perform();
       // UIOperation.waitAndClick(Recoveries_Task.btn_AceptarModalPosicionConsolidada,60);
    }
    public void verificarCampana(){
        Util.implicitWait(10);
        UIOperation.isVisible(Recoveries_Task.txt_Campana);
        Util.implicitWait(10);
        UIOperation.waitAndClick(Recoveries_Task.menu_MantCliente,60);
    }
    public void verificarelementoVisible(){
        Util.implicitWait(10);
        UIOperation.isVisible(Recoveries_Task.txt_Campana);
        Util.implicitWait(10);
        UIOperation.waitAndClick(Recoveries_Task.menu_MantCliente,60);
    }
    public void seleccionarTipoIngreso(){
        Util.implicitWait(10);
        UIOperation.isVisible(Recoveries_Task.txt_Campana);
        Util.implicitWait(10);
        UIOperation.waitAndClick(Recoveries_Task.menu_MantCliente,60);
    }


}
