package screens;

import org.openqa.selenium.By;
import utility.Constantes;
import utility.Element;
import utility.UIOperation;
import utility.Util;
import task.Campaings_Task;

public class campaings_screens {
    public void click_creditos() {
        UIOperation.giveClick(Campaings_Task.btn_credito);
    }

    public void click_credito_individual() {
        Util.waitSleep(120);
        UIOperation.giveClick(Campaings_Task.opt_credito_individual);
    }

    public void click_autorizacion_datos() {
        UIOperation.giveClick(Campaings_Task.chk_tratamiento_datos);
    }

    public void click_envio_publicidad() {
        UIOperation.giveClick(Campaings_Task.opt_envio_publicidad);
    }

    public void click_consultar_cliente() {
        UIOperation.giveClick(Campaings_Task.btn_consultar_cliente);
    }

    public void click_consultar_cliente_pestana_consulta_cliente() {
        UIOperation.giveClick(Campaings_Task.btn_consultar_cliente_pestana_consulta_cliente);
    }


    public void click_consultar_posisicion_consolidada() {
        UIOperation.giveClick(Campaings_Task.btn_consultar_posicion_consolidada);
    }

    public void click_tabla_posicion_consolidada() {
        UIOperation.giveClick(Campaings_Task.btn_consultar_tabla_posicion_consolidada);

    }
    public void retrocedo(){
        UIOperation.retroceso();
    }

    public void click_en_ok() {
        UIOperation.giveClick(Campaings_Task.btn_ok);
    }

    public void click_grabar_voz() {
        UIOperation.giveClick(Campaings_Task.btn_mensaje_voz);
    }

    public void click_iniciar_grabacion() {
        UIOperation.giveClick(Campaings_Task.btn_iniciar_grabacion);
    }

    public void click_finalizar_grabacion() {
        UIOperation.giveClick(Campaings_Task.btn_finalizar_grabacion);
    }

    public void click_mantenimiento_cliente() {
        UIOperation.giveClick(Campaings_Task.mnu_mantenimiento_cliente);
    }

    public void selecciona_ubigeo() {
        UIOperation.giveClick(Campaings_Task.btn_selecciona_ubigeo);
    }

    public void verifica_actividad_principal() {
        UIOperation.giveClick(Campaings_Task.btn_actividad_principal);
    }

    public void click_actividad_secundaria_si() {
        UIOperation.giveClick(Campaings_Task.btn_actividad_secundaria_si);
    }

    public void click_actividad_secundaria_no() {
        UIOperation.giveClick(Campaings_Task.btn_actividad_secundaria_no);
    }

    public void click_verifico_actividad_secundaria() {
        UIOperation.giveClick(Campaings_Task.btn_click_actividad_secundaria);
    }

    public void click_menu_datos_solicitud() {
        UIOperation.giveClick(Campaings_Task.mnu_datos_solicitud);
    }

    public void verifica_geolocalizacion() {
        UIOperation.giveClick(Campaings_Task.verifica_geolocalizacion);
    }
    public void verifica_tipo_ingreso() {
        UIOperation.giveClick(Campaings_Task.btn_tipo_ingreso);
    }
    public void selecciona_tipo_ingreso() {
        UIOperation.giveClick(Campaings_Task.opt_tipo_ingreso);
    }
    public void click_option_tipo_persona() {
        UIOperation.giveClick(Campaings_Task.opt_tipo_persona);
    }

    public void click_option_seleccion_ruc() {
        UIOperation.giveClick(Campaings_Task.opt_seleccion_ruc_con_negocio);
    }

    public String get_opt_otros() {
        return UIOperation.getText(Campaings_Task.opt_otros);
    }

    public void click_opt_cargo_otros() {
        UIOperation.giveClick(Campaings_Task.opt_opt_cargo_otros);
    }

    public void click_tipo_credito() {
        UIOperation.giveClick(Campaings_Task.opt_tipo_credito);
    }

    public void click_item_microempresas() {
        UIOperation.giveClick(Campaings_Task.opt_microempresas);
    }
    public void click_item_consumo(){
        UIOperation.giveClick(Campaings_Task.opt_consumo);

    }
    public void click_subtipo_credito(){
        UIOperation.giveClick(Campaings_Task.click_subtipo_credito);
    }

    public void click_subtipo() {
        UIOperation.giveClick(Campaings_Task.click_primer_item_sub_tipo);
    }
    public void click_subtipo_consumo() {
        UIOperation.giveClick(Campaings_Task.click_primer_item_sub_tipo_consumo);
    }

    public void click_primer_item_producto() {
        UIOperation.giveClick(Campaings_Task.click_primer_item_producto);
    }


    public void click_producto() {
        UIOperation.giveClick(Campaings_Task.click_producto);
    }
    public void click_producto_convenio() {
        UIOperation.giveClick(Campaings_Task.click_producto_convenio);
    }


    public void click_selecciona_subproducto() {
        UIOperation.giveClick(Campaings_Task.click_selecciona_subproducto);
    }
    public void click_selecciona_subproducto_convenio() {
        UIOperation.giveClick(Campaings_Task.click_selecciona_subproducto_convenio);
    }

    public void click_subproducto_temp() {
        UIOperation.giveClick(Campaings_Task.click_subproducto_temp);
    }


    public void click_tipo_operacion() {
        UIOperation.giveClick(Campaings_Task.click_tipo_operacion);
    }

    public void click_otorgamiento() {
        UIOperation.giveClick(Campaings_Task.click_otorgamiento);
    }
    public void click_ampliacion() {
        UIOperation.giveClick(Campaings_Task.click_ampliacion);
    }

    public void selecciona_libre_disponibilidad(){
        UIOperation.giveClick(Campaings_Task.click_libre_disponibilidad);
    }
    public void click_destino_credito(){
        UIOperation.giveClick(Campaings_Task.click_destino);
    }

    public void click_tipo_cronograma() {
        UIOperation.giveClick(Campaings_Task.click_tipo_cronograma);
    }

    public void selecciono_tipo_cronograma() {
        UIOperation.giveClick(Campaings_Task.selecciono_tipo_cronograma);
    }
    public void trae_cliente_activo(){

    }

    public void click_no_cuotas_libres() {
        UIOperation.giveClick(Campaings_Task.selecciono_cuotas_libres_no);
    }

    public void ingreso_monto_solicitado(String monto) {
        UIOperation.insertValue(Campaings_Task.txt_monto, monto);
    }

    public void ingreso_nro_cuotas(String cuotas) {
        UIOperation.insertValue(Campaings_Task.txt_cuotas, cuotas);
    }

    public void registro_fecha() {
        UIOperation.giveClick(Campaings_Task.chk_registro_fecha);
    }
    public void selecciona_no_segura_vida() {
        UIOperation.giveClick(Campaings_Task.opt_seguro_vida_no);
    }

    public void click_calculo_plazo_dias() {
        UIOperation.giveClick(Campaings_Task.btn_calculo_plazo);
    }
    public void click_consulta_niveles() {
        UIOperation.giveClick(Campaings_Task.btn_consulta_niveles);
    }
    public void selecciona_tasas() {
        UIOperation.giveClick(Campaings_Task.otp_click_selecciona_tasa);
    }
    public void selecciona_normal_tasas() {
        UIOperation.giveClick(Campaings_Task.click_normal_selecciona_tasa);
    }

    public void click_simulador_creditos() {
        UIOperation.giveClick(Campaings_Task.btn_simulador_creditos);
    }
    public void click_selecciona_plan_pagos() {
        UIOperation.giveClick(Campaings_Task.btn_plan_pagos);
    }
    public void pestana_excepciones() {
        UIOperation.giveClick(Campaings_Task.btn_pestana_excepciones);
    }
    public void pestana_referencias() {
        UIOperation.giveClick(Campaings_Task.btn_pestana_referencias);
    }
    public void pestana_garantias() {
        UIOperation.giveClick(Campaings_Task.btn_pestana_garantias);
    }
    public void pestana_evaluacion_agropecuaria() {
        UIOperation.giveClick(Campaings_Task.btn_pestana_evaluacion_agropecuaria);
    }
    public void pestana_documentos_virtuales(){
        UIOperation.giveClick(Campaings_Task.btn_documentos_virtuales);
    }
    public void click_cantidad_documentos_pagare(){
        UIOperation.giveClick(Campaings_Task.opt_cantidad_documento_pagare);
    }
    public void click_seleccionar_cantidad_documentos_pagare(){
        UIOperation.giveClick(Campaings_Task.opt_seleccionar_cantidad_documento_pagare);
    }
    public void click_en_anverso_uno(){
        UIOperation.giveClick(Campaings_Task.click_en_anverso_uno);
    }
    public void click_en_foto_documento(){
        UIOperation.giveClick(Campaings_Task.click_en_tomar_fotodocumento);
    }


    public void click_sobreendeudamiento() {
        UIOperation.giveClick(Campaings_Task.btn_sobreendeudamiento);
    }

    public String get_mensaje_perfi() {
        return UIOperation.getText(Campaings_Task.txtview_perfil);
    }
    public String get_trae_cliente_activo(){
        return UIOperation.getText(Campaings_Task.txt_tipo_credito);
    }
    public String get_trae_asesor(){
        return UIOperation.getText(Campaings_Task.txt_datos_asesor);
    }
    public String get_trae_datos_computo(){
        return UIOperation.getText(Campaings_Task.txt_datos_computo);
    }

    public void iniciar_session() {
        UIOperation.giveClick(Campaings_Task.btn_session);
    }

    public void scrollByText() {
        String _scrollContainer = "com.kata.formiik:id/rvFormOrder";
        String _childElement = "android.widget.TextView";
        String _value = "Tipo de cliente";

        //UIOperation.insertValue(txt_documento,"45000125");
        UIOperation.uiScrollableByText(_scrollContainer, _childElement, _value);
    }

}
