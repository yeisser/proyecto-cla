package screens;

import org.openqa.selenium.By;
import task.Campaings_Task;
import task.Recoveries_Task;
import utility.UIOperation;
import utility.Util;

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
    public void click_subtipo_empresarial() {
        UIOperation.giveClick(Campaings_Task.click_sub_tipo_empresarial);
    }


    public void click_primer_item_producto() {
        UIOperation.giveClick(Campaings_Task.click_primer_item_producto);
    }
    public void click_selecciona_pymes() {
        UIOperation.giveClick(Campaings_Task.click_selecciona_pymes);
    }
    public void click_selecciona_pyme_facilito() {
        UIOperation.giveClick(Campaings_Task.click_selecciona_facilito);
    }



    public void click_producto() {
        UIOperation.giveClick(Campaings_Task.click_producto);
    }
    public void click_producto_convenio() {
        UIOperation.giveClick(Campaings_Task.click_producto_convenio);
    }
    public void click_producto_personal() {
        UIOperation.giveClick(Campaings_Task.click_producto_personal);
    }


    public void click_selecciona_subproducto() {
        UIOperation.giveClick(Campaings_Task.click_selecciona_subproducto);
    }
    public void click_selecciona_subproducto_convenio() {
        UIOperation.giveClick(Campaings_Task.click_selecciona_subproducto_convenio);
    }

    public String get_celular_cliente_nueve_digitos() {
        return UIOperation.getText(Recoveries_Task.txtview_celular_cliente_nueve_digitos);
    }
    public void click_selecciona_subproducto_credichamba() {
        UIOperation.giveClick(Campaings_Task.click_selecciona_subproducto_credichamba);
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
    public void selecciona_modalidad_credito_principal() {
        UIOperation.giveClick(Campaings_Task.click_modalidad_credito_principal);
    }

    public void click_modalidad_credito() {
        UIOperation.giveClick(Campaings_Task.click_modalidad_credito);
    }


    public void click_ampliacion() {
        UIOperation.giveClick(Campaings_Task.click_ampliacion);
    }

    public void selecciona_libre_disponibilidad(){
        UIOperation.giveClick(Campaings_Task.click_libre_disponibilidad);
    }
    public void selecciona_agua_saneamiento(){
        UIOperation.giveClick(Campaings_Task.click_agua_saneamiento);
    }

    public void click_destino_credito(){
        UIOperation.giveClick(Campaings_Task.click_destino);
    }
    public void selecciono_agua_saneamiento(){
        UIOperation.giveClick(Campaings_Task.click_agua_saneamiento);
    }

    public void click_tipo_cronograma() {
        UIOperation.giveClick(Campaings_Task.click_tipo_cronograma);
    }

    public void selecciono_tipo_cronograma() {
        UIOperation.giveClick(Campaings_Task.selecciono_tipo_cronograma);
    }
    public void click_frecuencia() {
        UIOperation.giveClick(Campaings_Task.click_frecuencia);
    }
    public void selecciono_bimensual() {
        UIOperation.giveClick(Campaings_Task.selecciono_frecuencia_bimensual);
    }


    public void selecciono_tipo_cronograma_periodo_fijo() {
        UIOperation.giveClick(Campaings_Task.selecciono_periodo_fijo);
    }

    public void selecciono_menu_datos_conyuge(){
        UIOperation.giveClick(Campaings_Task.selecciono_menu_datos_conyuge);
    }
    public void selecciono_menu_excepciones(){
        UIOperation.giveClick(Campaings_Task.selecciono_menu_excepciones);
    }
    public void hago_click_consultar_reglas_caja(){
        UIOperation.giveClick(Campaings_Task.click_reglas_caja);
    }
    public void selecciono_regla_tres_entidades(){
        UIOperation.giveClick(Campaings_Task.selecciona_regla_tres_entidades);
    }

    public void click_aceptar(){
        UIOperation.giveClick(Campaings_Task.click_aceptar);
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
    public void click_motorClienteNBancarizado() {
        UIOperation.giveClick(Campaings_Task.btn_sobreendeudamiento);
    }
    public void click_envioSolicitud() {
        UIOperation.giveClick(Campaings_Task.btn_sobreendeudamiento);
    }

    public String get_mensaje_perfi() {
        return UIOperation.getText(Campaings_Task.txtview_perfil);
    }
    public String get_mensaje_unoMismo() {
        return UIOperation.getText(Campaings_Task.txtview_unoMismo);
    }
    public void es_Visible_Monto(){
        UIOperation.isVisible(Campaings_Task.campo_Monto);
    }
    public void es_Visible_Cuotas(){
        UIOperation.isVisible(Campaings_Task.campo_Cuota);
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

    public void es_Visible_SimularCredito(){
        UIOperation.isVisible(Campaings_Task.boton_SimularCredito);
    }
    public void es_Visible_Telefono(){
        UIOperation.isVisible(Campaings_Task.boton_Telefono);
    }
    public void es_Visible_InicioActividadEconomica(){
        UIOperation.isVisible(Campaings_Task.campo_InicioActividadEconomica);
    }
    public void es_Visible_GeoposicionDomicilio(){
        UIOperation.isVisible(Campaings_Task.boton_GeoposicionDomicilio);
    }
    public void es_Visible_llamar(){
        UIOperation.isVisible(Campaings_Task.boton_llamar);
    }

    public void clickItemSubproducto(){
        UIOperation.giveClick(Campaings_Task.campo_Subproducto);
    }
    public void clickSubProductoPersonal(){
        UIOperation.isVisible(Campaings_Task.campo_SubproductoPersonal);
    }
    public void es_Visible_ConsultarMotorDeDecisiónClienteNoBancarizado(){
        UIOperation.isVisible(Campaings_Task.boton_ConsultarMotorDeDecisiónClienteNoBancarizado);
    }
    public void es_Visible_BotonMensajeVoz(){
        UIOperation.isVisible(Campaings_Task.boton_MensajeVoz);
    }
    public void es_Visible_BotonConsultarCliente(){
        UIOperation.isVisible(Campaings_Task.btn_consultar_cliente);
    }
    public void es_Visible_CampoSubproducto(){
        UIOperation.isVisible(Campaings_Task.campo_Subproducto);
    }
    public void clickBotonEditarConyugue(){
        UIOperation.isVisible(Campaings_Task.boton_EditarConyugue);
    }
    public void es_Visible_CampoNombreCompletoConyugue(){
        UIOperation.isVisible(Campaings_Task.campo_NombreCompletoConyugue);
    }
    public void es_Visible_CampoEdadConyugue(){
        UIOperation.isVisible(Campaings_Task.campo_EdadConyugue);
    }
    public void clickMenuPersonasDatosComplementarios(){
        UIOperation.giveClick(Campaings_Task.menu_PersonaDatosComplementarios);
    }
    public void es_Visible_TiempoActividadEconomicaAnios(){
        UIOperation.isVisible(Campaings_Task.campo_TiempoActividadEconomicaAnio);
    }
    public void es_Visible_PosicionConsolidadaConyugue(){
        UIOperation.isVisible(Campaings_Task.btn_consultar_posicion_consolidada);
    }
    public void es_Visible_ConsultarPersonaConyugue(){
        UIOperation.isVisible(Campaings_Task.btn_consultar_cliente);
    }
    public void es_Visible_BotonConsultarGarantiasTitularConyugue(){
        UIOperation.isVisible(Campaings_Task.btn_ConsultarGarantiasTitularConyugue);
    }
    public void click_MenuReferencias(){
        UIOperation.giveClick(Campaings_Task.menu_ReferenciasVinculadosDeudas);
    }
    public void click_MenuGarantias(){
        UIOperation.giveClick(Campaings_Task.menu_Garantias);
    }
    public void click_botonReferencias(){
        UIOperation.giveClick(Campaings_Task.btn_Referencias);
    }
    public void click_botonDeudas(){
        UIOperation.giveClick(Campaings_Task.btn_Deudas);
    }
    public void click_botonAgregarReferencias(){
        UIOperation.giveClick(Campaings_Task.btn_AgregarReferencias);
    }
    public void click_botonAgregarDeudas(){
        UIOperation.giveClick(Campaings_Task.btn_AgregarDeudas);
    }
    public void es_Visible_CampoTipoReferencia(){
        UIOperation.isVisible(Campaings_Task.campo_TipoReferencia);
    }
    public void clickMenuDocumentosVirtuales(){
        UIOperation.giveClick(Campaings_Task.menu_DocumentosVirtuales);
    }
    public void validarBotonTitularAnverso(){
        UIOperation.isVisible(Campaings_Task.btn_TitularAnverso);
    }
    public void click_TipoDeuda(){
        UIOperation.giveClick(Campaings_Task.campo_TipoDeuda);
    }
    public void click_TipoDeudaDirecta(){
        UIOperation.giveClick(Campaings_Task.campo_TipoDeudaDirecta);
    }
    public void es_Visible_CampoFrecuencia(){
        UIOperation.isVisible(Campaings_Task.campo_Frecuencia);
    }
    public void es_Visible_PreguntaCuotrasLibres(){
        UIOperation.isVisible(Campaings_Task.campo_CuotasLibres);
    }
    public void click_menuVariablesSocioeconomicas(){
        UIOperation.giveClick(Campaings_Task.menu_VariablesSocioeconomicas);
    }
    public void click_menuAnalisisCualitativoPersonal(){
        UIOperation.giveClick(Campaings_Task.menu_AnalisisCualitativoPersonal);
    }
    public void click_menuEstadosDeResultadosPersonas(){
        UIOperation.giveClick(Campaings_Task.menu_EstadosDeResultadosPersonas);
    }
    public void click_botonFiadores(){
        UIOperation.giveClick(Campaings_Task.btn_botonFiadores);
    }
    public void click_CrearFiadores(){
        UIOperation.giveClick(Campaings_Task.btn_CrearFiadores);
    }
    public void es_Visible_TipoGuardadoDelFormularioFiadores(){
        UIOperation.isVisible(Campaings_Task.campo_TipoGuardadoDelFormularioFiadores);
    }
    public void ingresoReferenciaDeDireccion(String ReferenciaDireccion){
        UIOperation.insertValue(Campaings_Task.campo_ReferenciaDireccion,ReferenciaDireccion);
    }
    public void seleccionoTipoDeVivienda(String TipoVivienda){
        UIOperation.waitAndClick(Campaings_Task.campo_TipoDeVivienda,180);
        By opcionTipoVivienda = Recoveries_Task.opcionMenu(TipoVivienda);
        UIOperation.waitAndClick(opcionTipoVivienda,180);
        Util.implicitWait(60);
    }

    public void seleccionoTipoConstruccion(String TipoConstruccion){
        UIOperation.waitAndClick(Campaings_Task.campo_TipoConstruccion,180);
        By opcionTipoConstruccion = Recoveries_Task.opcionMenu(TipoConstruccion);
        UIOperation.waitAndClick(opcionTipoConstruccion,180);
        Util.implicitWait(60);
    }
    public void seleccionoTipoDeSector(String TipoDeSector){
        UIOperation.waitAndClick(Campaings_Task.campo_TipoDeSector,180);
        By opcionTipoDeSector = Recoveries_Task.opcionMenu(TipoDeSector);
        UIOperation.waitAndClick(opcionTipoDeSector,180);
        Util.implicitWait(60);
    }
    public void ingresoAñosDeResidencia(String AñosDeResidencia){
        UIOperation.insertValue(Campaings_Task.campo_AñosDeResidencia,AñosDeResidencia);
    }
    public void seleccionoOcupacion(String Ocupacion){
        UIOperation.waitAndClick(Campaings_Task.campo_Ocupacion,180);
        By opcionOcupacion = Recoveries_Task.opcionMenu(Ocupacion);
        UIOperation.waitAndClick(opcionOcupacion,180);
        Util.implicitWait(60);
    }
    public void seleccionoCargo(String Cargo){
        UIOperation.waitAndClick(Campaings_Task.campo_Cargo,180);
        By opcionCargo = Recoveries_Task.opcionMenu(Cargo);
        UIOperation.waitAndClick(opcionCargo,180);
        Util.implicitWait(60);
    }
    public void ingresoNumeroDePersonasDependientes(String NumeroDePersonasDependientes){
        UIOperation.insertValue(Campaings_Task.campo_NumeroDePersonasDependientes,NumeroDePersonasDependientes);
    }
    public void ingresoNumeroDeHijos(String NumeroDeHijos){
        UIOperation.insertValue(Campaings_Task.campo_NumeroDeHijos,NumeroDeHijos);
    }
    public void seleccionoTipoDeIngreso(String TipoDeIngreso){
        UIOperation.waitAndClick(Campaings_Task.campo_TipoDeIngreso,180);
        By opcionTipoDeIngreso = Recoveries_Task.opcionMenu(TipoDeIngreso);
        UIOperation.waitAndClick(opcionTipoDeIngreso,180);
        Util.implicitWait(60);
    }
    public void seleccionoNoCambioDeActividadPrincipal(){
        UIOperation.giveClick(Campaings_Task.radio_NoCambioDeActividadPrincipal);
    }
    public void marcoNoEnSeguroOptativos(){
        UIOperation.giveClick(Campaings_Task.radio_NoEnSeguroOptativos);
    }
    public void consultoSobreendeudamiento(){
        UIOperation.giveClick(Campaings_Task.btn_Sobreendeudamiento);
    }
    public void consultoMotorDeDecisionDeClienteNoBancarizado(){
        UIOperation.giveClick(Campaings_Task.btn_MotorDeDecisionDeClienteNoBancarizado);
    }
    public void seleccionoTiempoEnDomicilio(String TiempoEnDomicilio){
        UIOperation.waitAndClick(Campaings_Task.campo_TiempoEnDomicilio,180);
        By opcionTiempoEnDomicilio = Recoveries_Task.opcionMenu(TiempoEnDomicilio);
        UIOperation.waitAndClick(opcionTiempoEnDomicilio,180);
        Util.implicitWait(60);
    }
    public void ingresoNumeroDeClientesSemanales(String NroClientesSemanales){
        UIOperation.insertValue(Campaings_Task.campo_NroClientesSemanales,NroClientesSemanales);
    }
    public void seleccionoNumeroDeTrabajadores(String NroTrabajadores){
        UIOperation.waitAndClick(Campaings_Task.campo_NroTrabajadores,180);
        By opcionNroTrabajadores = Recoveries_Task.opcionMenu(NroTrabajadores);
        UIOperation.waitAndClick(opcionNroTrabajadores,180);
        Util.implicitWait(60);
    }
    public void seleccionoTiempoExperienciaEnElNegocio(String ExperienciaNegocio){
        UIOperation.waitAndClick(Campaings_Task.campo_TiempoExperienciaEnElNegocio,180);
        By opcionTiempoExperienciaEnElNegocio = Recoveries_Task.opcionMenu(ExperienciaNegocio);
        UIOperation.waitAndClick(opcionTiempoExperienciaEnElNegocio,180);
        Util.implicitWait(60);
    }
    public void seleccionoNumeroDeHijosEnEdadEscolar(String HijosEdadEscolar){
        UIOperation.waitAndClick(Campaings_Task.campo_HijosEdadEscolar,180);
        By opcionHijosEdadEscolar = Recoveries_Task.opcionMenu(HijosEdadEscolar);
        UIOperation.waitAndClick(opcionHijosEdadEscolar,180);
        Util.implicitWait(60);
    }
    public void seleccionoPosicionEnElHogar(String PosicionEnElHogar){
        UIOperation.waitAndClick(Campaings_Task.campo_PosicionEnElHogar,180);
        By opcionPosicionEnElHogar = Recoveries_Task.opcionMenu(PosicionEnElHogar);
        UIOperation.waitAndClick(opcionPosicionEnElHogar,180);
        Util.implicitWait(60);
    }
    public void seleccionoSiPagaPorInternet(){
        UIOperation.giveClick(Campaings_Task.radio_SiPagaPorInternet);
    }
    public void seleccionoDistanciaDelNegocio(String DistanciaDelNegocio){
        UIOperation.waitAndClick(Campaings_Task.campo_DistanciaDelNegocio,180);
        By opcionDistanciaDelNegocio = Recoveries_Task.opcionMenu(DistanciaDelNegocio);
        UIOperation.waitAndClick(opcionDistanciaDelNegocio,180);
        Util.implicitWait(60);
    }
    public void seleccionoSiPagaPorLuz(){
        UIOperation.giveClick(Campaings_Task.radio_SiPagaPorLuz);
    }
    public void seleccionoSiPagaPorAgua(){
        UIOperation.giveClick(Campaings_Task.radio_SiPagaPorAgua);
    }
    public void consultoReglasCaja(){
        UIOperation.giveClick(Campaings_Task.campo_ReglasCaja);
    }
    public void seleccionoTipoDeReferencia(String TipoReferencia){
        UIOperation.waitAndClick(Campaings_Task.campo_TipoReferencia,180);
        By opcionTipoReferencia = Recoveries_Task.opcionMenu(TipoReferencia);
        UIOperation.waitAndClick(opcionTipoReferencia,180);
        Util.implicitWait(60);
    }
    public void seleccionoVinculoDeReferencia(String VinculoReferencia){
        UIOperation.waitAndClick(Campaings_Task.campo_VinculoReferencia,180);
        By opcionVinculoReferencia = Recoveries_Task.opcionMenu(VinculoReferencia);
        UIOperation.waitAndClick(opcionVinculoReferencia,180);
        Util.implicitWait(60);
    }
    public void ingresoNombreDeReferencia(String NombreReferencia){
        UIOperation.insertValue(Campaings_Task.campo_NombreReferencia,NombreReferencia);
    }
    public void ingresoDireccionDeReferencia(String DireccionReferencia){
        UIOperation.insertValue(Campaings_Task.campo_DireccionReferencia,DireccionReferencia);
    }
    public void ingresoTelefonoDeReferencia(String TelefonoReferencia){
        UIOperation.insertValue(Campaings_Task.campo_TelefonoReferencia,TelefonoReferencia);
    }
    public void ingresoComentariosSobreReferencia(String ComentariosReferencia){
        UIOperation.insertValue(Campaings_Task.campo_ComentariosReferencia,ComentariosReferencia);
    }
    public void guardoReferencia(){
        UIOperation.giveClick(Campaings_Task.campo_guardoReferencia);
    }
    public void hagoClickEnRetrocederReferencia(){
        UIOperation.giveClick(Campaings_Task.btn_RetrocederReferencia);
    }
    public void seleccionoIngresoPrincipal(String IngresoPrincipal){
        UIOperation.waitAndClick(Campaings_Task.campo_IngresoPrincipal,180);
        By opcionIngresoPrincipal = Recoveries_Task.opcionMenu(IngresoPrincipal);
        UIOperation.waitAndClick(opcionIngresoPrincipal,180);
        Util.implicitWait(60);
    }
    public void seleccionoIngresoSecundario(String IngresoSecundario){
        UIOperation.waitAndClick(Campaings_Task.campo_IngresoSecundario,180);
        By opcionIngresoSecundario = Recoveries_Task.opcionMenu(IngresoSecundario);
        UIOperation.waitAndClick(opcionIngresoSecundario,180);
        Util.implicitWait(60);
    }
    public void seleccionoTiempoExperienciaEnAños(String TiempoExperiencia){
        UIOperation.waitAndClick(Campaings_Task.campo_TiempoExperiencia,180);
        By opcionTiempoExperiencia = Recoveries_Task.opcionMenu(TiempoExperiencia);
        UIOperation.waitAndClick(opcionTiempoExperiencia,180);
        Util.implicitWait(60);
    }
    public void seleccionoEstabilidadLaboral(String EstabilidadLaboral){
        UIOperation.waitAndClick(Campaings_Task.campo_EstabilidadLaboral,180);
        By opcionEstabilidadLaboral = Recoveries_Task.opcionMenu(EstabilidadLaboral);
        UIOperation.waitAndClick(opcionEstabilidadLaboral,180);
        Util.implicitWait(60);
    }
    public void ingresoNombreEmpresa(String NombreEmpresa){
        UIOperation.insertValue(Campaings_Task.campo_NombreEmpresa,NombreEmpresa);
    }
    public void ingresoRucEmpresa(String RUCEmpresa){
        UIOperation.insertValue(Campaings_Task.campo_RUCEmpresa,RUCEmpresa);
    }
    public void seleccionoSectorLaboral(String SectorLaboral){
        UIOperation.waitAndClick(Campaings_Task.campo_SectorLaboral,180);
        By opcionSectorLaboral = Recoveries_Task.opcionMenu(SectorLaboral);
        UIOperation.waitAndClick(opcionSectorLaboral,180);
        Util.implicitWait(60);
    }
    public void seleccionoReferenciaDeUbicacionDeTrabajo(String ReferenciaUbicacion){
        UIOperation.insertValue(Campaings_Task.campo_ReferenciaUbicacion,ReferenciaUbicacion);
    }
    public void seleccionoDocumentoDeIngresos(String DocumentoIngresos){
        UIOperation.waitAndClick(Campaings_Task.campo_DocumentoIngresos,180);
        By opcionSectorLaborall = Recoveries_Task.opcionMenu(DocumentoIngresos);
        UIOperation.waitAndClick(opcionSectorLaborall,180);
        Util.implicitWait(60);
    }
    public void seleccionoSIEnCapacidadDeAhorro(){
        UIOperation.giveClick(Campaings_Task.radio_SIEnCapacidadDeAhorro);
    }
    public void ingresoElIngresoNetoDelTitular(String IngresoNetoTitular){
        UIOperation.insertValue(Campaings_Task.campo_IngresoNetoTitular,IngresoNetoTitular);
    }
    public void ingresoComentariosDePropuestaDeCredito(String ComentariosDePropuestaDeCredito){
        UIOperation.insertValue(Campaings_Task.campo_ComentariosDePropuestaDeCredito,ComentariosDePropuestaDeCredito);
    }
    public void consultoGarantiasTitutlarConyugue(){
        UIOperation.giveClick(Campaings_Task.btn_GarantiasTitutlarConyugue);
    }
    public void marcoNOEnRequiereGarantia(){
        UIOperation.giveClick(Campaings_Task.radio_NOEnRequiereGarantia);
    }
    public void seleccionoDocumentosVirtuales(){
        UIOperation.giveClick(Campaings_Task.menu_DocumentosVirtuales);
    }
    public void procesoSolicitud(){
        UIOperation.giveClick(Campaings_Task.btn_ProcesoSolicitud);
    }
    public void hagoClickEnEnviar(){
        UIOperation.giveClick(Campaings_Task.btn_Enviar);
    }
    public void validoAdvertenciaElPlazoSolicitadoIncumpleConLasCondicionesPermitidas(){
        UIOperation.isVisible(Campaings_Task.advertencia_PlazoIncumple);
    }
    public void seleccionoTipoDeCredito(String TipoCredito){
        UIOperation.waitAndClick(Campaings_Task.opt_tipo_credito,180);
        By opcionTipoCredito = Recoveries_Task.opcionMenu(TipoCredito);
        UIOperation.waitAndClick(opcionTipoCredito,180);
        Util.implicitWait(60);
    }
    public void seleccionaModalidadDeCredito(String ModalidadCredito){
        UIOperation.waitAndClick(Campaings_Task.campo_ModalidadCredito,180);
        By opcionModalidadCredito = Recoveries_Task.opcionMenu(ModalidadCredito);
        UIOperation.waitAndClick(opcionModalidadCredito,180);
        Util.implicitWait(60);
    }
    public void seleccinoFrecuencia(String Frecuencia){
        UIOperation.waitAndClick(Campaings_Task.select_Frecuencia,180);
        By opcionFrecuencia = Recoveries_Task.opcionMenu(Frecuencia);
        UIOperation.waitAndClick(opcionFrecuencia,180);
        Util.implicitWait(60);
    }
    public void ingresoCantidadEnFrecuenciaEnDias(String CantidadFrencuenciaDias){
        UIOperation.insertValue(Campaings_Task.campo_CantidadFrencuenciaDias,CantidadFrencuenciaDias);
    }
    public void validaCampoTEA(){
        UIOperation.isVisible(Campaings_Task.campo_TEA);
    }
    public void validoExistenciaDeDeudas(){
        try{
            UIOperation.isVisible(Campaings_Task.campo_deudaDirecta);
        }catch (Exception e){
            System.out.println("No existe deuda directa");
        }
        try{
            UIOperation.isVisible(Campaings_Task.campo_deudaIndirecta);
        }catch (Exception e){
            System.out.println("No existe deuda indirecta");
        }


    }

    public void scrollByText() {
        String _scrollContainer = "com.kata.formiik:id/rvFormOrder";
        String _childElement = "android.widget.TextView";
        String _value = "Tipo de cliente";

        //UIOperation.insertValue(txt_documento,"45000125");
        UIOperation.uiScrollableByText(_scrollContainer, _childElement, _value);
    }
}
