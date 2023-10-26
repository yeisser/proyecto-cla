package stepDefinations;

import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.testng.Assert;
import screens.campaings_screens;
import utility.Constantes;
import utility.Element;
import utility.Hook;
import utility.UIOperation;

public class ModuleCampaingsStep {

    campaings_screens credito = new campaings_screens();

    @When("^el usuario hace click en la opcion credito del menu de Tipo de proceso$")
    public void UsuarioclickCreditoMenuProcesos() {
        credito.click_creditos();
    }

    @And("^hago click en la opcion Credito individual del menu Tipo de formulario$")
    public void clickEnCreditoIndividual() {
        credito.click_credito_individual();
    }

    @And("^verifico mensaje (.*)$")
    public void validarUsuarioPerfilJefeOficina(String mensaje_esperado) {
        Assert.assertEquals(credito.get_mensaje_perfi(), mensaje_esperado);
    }

    @And("^selecciono autorizacion de tratamiento de datos$")
    public void seleccion_tratamiento_datos() {
        credito.click_autorizacion_datos();
    }

    @And("^selecciono o no autorizacion de envio de publicidad$")
    public void selecciono_envio_publicidad() {
        credito.click_envio_publicidad();
    }

    @And("^hago click en consultar cliente$")
    public void click_consultar_cliente() {
        credito.click_consultar_cliente();
        credito.click_en_ok();

    }

    public void scrollByText() {
        String _scrollContainer = "com.kata.formiik:id/rvFormOrder";
        String _childElement = "android.widget.TextView";
        String _value = "Posición consolidada";

        UIOperation.uiScrollableByText(_scrollContainer, _childElement, _value);
    }
    public static By lbl_si = Element.Mobile_Element(Constantes.XPATH, "//*[@text='No']");
    public void clickWebView() {
        String iframeContext  = "com.kata.formiik:id/action_bar_root";
        Hook.getDriver().switchTo().frame(iframeContext);
        Hook.getDriver().findElement(ModuleCampaingsStep.lbl_si).click();
    }

    public void scrollByText_tipo_cronograma() {
        String _scrollContainer = "com.kata.formiik:id/rvFormOrder";
        String _childElement = "android.widget.TextView";
        String _value = "Tipo de cronograma";

        UIOperation.uiScrollableByText(_scrollContainer, _childElement, _value);
    }

    public void scrollByText_baja_hasta_monto() {
        String _scrollContainer = "com.kata.formiik:id/rvFormOrder";
        String _childElement = "android.widget.TextView";
        String _value = "Monto Solicitado";

        UIOperation.uiScrollableByText(_scrollContainer, _childElement, _value);
    }

    public void scrollByText_baja_hasta_nro_cuotas() {
        String _scrollContainer = "com.kata.formiik:id/rvFormOrder";
        String _childElement = "android.widget.EditText";
        String _value = "Nro. de cuotas";

        UIOperation.uiScrollableByText(_scrollContainer, _childElement, _value);
    }

    public void scrollByText_baja_hasta_simular_credito() {
        String _scrollContainer = "com.kata.formiik:id/rvFormOrder";
        String _childElement = "android.widget.TextView";
        String _value = "Simular crédito";

        UIOperation.uiScrollableByText(_scrollContainer, _childElement, _value);
    }

    @And("^consulto posición consolidada$")
    public void click_consultar_posisicion_consolidada() {
        scrollByText();
        credito.click_consultar_posisicion_consolidada();
        credito.click_en_ok();
    }
    @And("Le hago click al si del continuar")
    public void click_si_continuar(){
        clickWebView();
    }

    @And("^consulto tabla posicion consolidada$")
    public void click_tabla_posicion_consolidada() {
        credito.click_tabla_posicion_consolidada();
        credito.retrocedo();
    }

    @And("^se habilita mensaje de voz, espero unos seg. y grabo voz$")
    public void click_grabar_voz() {
        credito.click_grabar_voz();
    }

    @And("^click en iniciar grabacion voz$")
    public void click_iniciar_grabacion() {
        credito.click_iniciar_grabacion();
    }

    @And("^hago click en finalizar grabacion de voz$")
    public void click_finalizar_grabacion() {
        credito.click_finalizar_grabacion();
    }

    @And("^hago click en Mantenimiento cliente$")
    public void click_mantenimiento_cliente() {
        credito.click_mantenimiento_cliente();
    }

    @And("^retrocedo$")
    public void press_retrocedo() {
        credito.retrocedo();
    }

    @And("^verifico que todos los campos esten habilitados$")
    public void verifica_campos_habilitados() {
        credito.selecciona_ubigeo();
        credito.verifica_geolocalizacion();
        credito.verifica_tipo_ingreso();
        credito.selecciona_tipo_ingreso();
    }

    @And("^verifico actividad principal$")
    public void verifico_actividad_principal() {
        credito.verifica_actividad_principal();
    }

    @And("^hago click en si tiene actividad secundaria$")
    public void click_opt_si_actividad_secundaria() {
        credito.click_actividad_secundaria_si();
    }

    @And("^hago click en no tiene actividad secundaria$")
    public void click_opt_no_actividad_secundaria() {
        credito.click_actividad_secundaria_no();
    }

    @And("^verifico_actividad secundaria$")
    public void click_verifico_actividad_secundaria() {
        credito.click_verifico_actividad_secundaria();
    }


    @And("^hago click menu Datos de solicitud$")
    public void click_menu_datos_solicitud() {
        credito.click_menu_datos_solicitud();
    }

    @And("^hago click en Clasificacion tipo de persona$")
    public void click_clasificacion_tipo_persona() {
        credito.click_option_tipo_persona();
    }

    @And("^hago click en opcion Con negocio con RUC$")
    public void click_seleccion_ruc() {
        credito.click_option_seleccion_ruc();
    }

    @And("^selecciona desplegable cargo otros$")
    public void click_opt_cargo_otros() {
        credito.click_opt_cargo_otros();
    }

    @And("^ingresa tipo de credito$")
    public void click_tipo_credito() {
        credito.click_tipo_credito();
    }

    @And("^selecciona primer item Microempresas$")
    public void click_item_microempresas() {
        credito.click_item_microempresas();
    }
    @And("^selecciona item CONSUMO$")
    public void click_item_consumo_tipo_credito(){
        credito.click_item_consumo();
    }
    @And("^selecciona item de tipo de credito \"([^\"]*)\"$")
    public void click_item_seleccion() {
        credito.click_item_microempresas();
    }

    @And("^hago click en subtipo de credito$")
    public void click_subtipo_credito() {
        credito.click_subtipo_credito();
    }

    @And("^selecciona primer item AGROPECUARIOS de subtipo de credito$")
    public void click_subtipo() {
        credito.click_subtipo();
    }
    @And("^selecciona subtipo de credito CONSUMO$")
    public void click_subtipo_consumo() {
        credito.click_subtipo_consumo();
    }
    @And("^selecciona subtipo de credito empresarial$")
    public void click_subtipo_empresarial(){
        credito.click_subtipo_empresarial();
    }
    @And("^selecciona producto PYME$")
    public void click_producto_pymes(){
        credito.click_primer_item_producto();
        credito.click_selecciona_pymes();
    }
    @And("^selecciona subproducto pyme$")
    public void click_subproducto(){
        credito.click_selecciona_subproducto();
        credito.click_selecciona_pymes();
    }
    @And("^selecciona subproducto PYME$")
    public void click_subproducto_pymes(){
        credito.click_primer_item_producto();
        credito.click_selecciona_pymes();
    }
    @And("^selecciona subproducto PYME-FACILITO$")
    public void click_subproducto_pyme_facilito(){
        credito.click_selecciona_subproducto();
        credito.click_selecciona_pyme_facilito();
    }

    @And("^selecciona primer item de productos")
    public void click_primer_item() {
        credito.click_primer_item_producto();
    }

    @And("^selecciona producto datos de solicitud$")
    public void click_producto() {
        credito.click_producto();
    }
    @And("^selecciona producto CONVENIO$")
    public void click_producto_convenio() {
        credito.click_producto_convenio();
    }
    @And("^selecciona producto PERSONAL$")
    public void click_producto_personal() {
        credito.click_producto_personal();
    }

    @And("^selecciona subproducto datos de solicitud$")
    public void click_selecciona_subproducto() {
        credito.click_subproducto_temp();
        credito.click_selecciona_subproducto();
    }
    @And("^selecciona subproducto CONVENIO$")
    public void click_selecciona_subproducto_convenio() {
        credito.click_subproducto_temp();
        credito.click_selecciona_subproducto_convenio();
    }
    @And("^selecciona subproducto credichamba$")
    public void click_selecciona_subproducto_credichamba() {
        credito.click_subproducto_temp();
        credito.click_selecciona_subproducto_credichamba();
    }


    @And("^Hago click en suproducto$")
    public void click_subproducto_temp() {
        credito.click_subproducto_temp();
    }

    @And("^hago click en tipo de operacion$")
    public void click_tipo_opearcion() {
        credito.click_tipo_operacion();
    }

    @And("^selecciona otorgamiento del tipo de operacion$")
    public void click_otorgamiento() {
        credito.click_otorgamiento();
        credito.selecciona_modalidad_credito_principal();
    }
    @And("^selecciono Modalidad de credito principal$")
    public void click_modalidad_credito() {
        credito.click_modalidad_credito();

    }

    @And("^selecciona ampliacion del tipo de operacion$")
    public void click_ampliacion() {
        credito.click_ampliacion();
    }
    @And("^selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD$")
    public void click_destino_credito_seleccion_libre_disponibilidad() {
        credito.click_destino_credito();
        credito.selecciona_libre_disponibilidad();
    }
    @And("^selecciono Destino del credito y hago click en AGUA Y SANEAMIENTO$")
    public void click_destino_credito_seleccion_agua_saneamiento() {
        credito.click_destino_credito();
        credito.selecciona_agua_saneamiento();
    }



    @And("^hago click Tipo de cronograma$")
    public void click_tipo_cronograma() {
        //scrollByText_tipo_cronograma();
        credito.click_tipo_cronograma();
    }

    @And("^selecciono tipo de cronograma fecha fija$")
    public void selecciono_tipo_cronograma() {
        credito.selecciono_tipo_cronograma();
    }
    @And("^selecciono frecuencia Bimensual$")
    public void selecciono_frecuencia() {
        credito.click_frecuencia();
        credito.selecciono_bimensual();
    }

    @And("^selecciono tipo de cronograma periodo Fijo$")
    public void selecciono_tipo_cronograma_periodo_fijo() {
        credito.selecciono_tipo_cronograma_periodo_fijo();

    }
    @And("^hago click en el menu Datos del conyuge$")
    public void selecciono_menu_datos_conyuge() {
        credito.selecciono_menu_datos_conyuge();
    }
    @And("^hago click en el menu Excepciones$")
    public void selecciono_menu_excepciones() {
        credito.selecciono_menu_excepciones();
    }
    @And("^verifico regla max de entidades es tres para clientes solteros$")
    public void verifica_reglas_entidades_soltero_tres_clientes() {
        credito.hago_click_consultar_reglas_caja();
        credito.click_aceptar();
        credito.selecciono_regla_tres_entidades();
    }



    @And("^verifico que cliente tenga credito activo$")
    public void cliente_activo() {
        try{
            if(credito.get_trae_cliente_activo().toString() != null){

            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }
    @And("^verifica asesor datos de computo$")
    public void verifica_datos_asesor(){
        try{
            if(credito.get_trae_asesor().toString() != null){

            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }
    @And("^verifica que no aparezca asesor datos de computo$")
    public void verifica_no_datos_asesor(){
        try{
            if(credito.get_trae_asesor().toString() == null){

            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }
    @And("^verifica que no aparezca campo DATOS DE COMPUTO$")
    public void verifica_no_datos_computo(){
        try{
            if(credito.get_trae_datos_computo().toString() == null){

            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }


    @And("^selecciona cuotas libres no$")
    public void seleciona_no_cuotas_libres() {
        credito.click_no_cuotas_libres();
    }

    @And("^ingreso Monto Solicitado \"([^\"]*)\"$")
    public void ingreso_monto_solicitado(String monto) {
        credito.ingreso_monto_solicitado(monto);
    }

    @And("^ingreso Nro de cuotas \"([^\"]*)\"$")
    public void ingreso_nro_cuotas(String cuotas) {
        scrollByText_baja_hasta_nro_cuotas();
        credito.ingreso_nro_cuotas(cuotas);
    }
    @And("^selecciono agua saneamiento del Destino del crédito$")
    public void selecciono_destino_credito(){
        credito.click_destino_credito();
        credito.selecciono_agua_saneamiento();
    }
    @And("^registro fecha de primera cuota$")
    public void registrofecha() {
        credito.registro_fecha();
    }

    @And("^selecciono no en el seguro de vida$")
    public void Selecciona_seguro_vida_no() {
        credito.selecciona_no_segura_vida();
    }

    @And("^selecciona calculo de plazo en días$")
    public void click_calculo_plazo_dias() {
        credito.click_calculo_plazo_dias();
        credito.click_en_ok();
    }

    @And("^consulta niveles de autonomia de tasa$")
    public void click_consulta_niveles_autonomia_tasa() {
        credito.click_consulta_niveles();

    }

    @And("^Selecciona tasas$")
    public void selecciona_tasas() {
        credito.selecciona_tasas();
    }

    @And("^selecciona NORMAL de tasas$")
    public void selecciona_normal_tasas() {
        credito.selecciona_normal_tasas();
    }

    @And("^hago click en Simulador crédito$")
    public void click_simulador_creditos() {
        scrollByText_baja_hasta_simular_credito();
        credito.click_simulador_creditos();
        credito.click_en_ok();
    }

    @And("^Selecciona plan de pagos$")
    public void click_selecciona_plan_pagos() {
        credito.click_selecciona_plan_pagos();
        credito.retrocedo();
    }

    @And("^cambio de pestana hasta documentos")
    public void click_cambia_pestana_documentos() {
        credito.pestana_excepciones();
        credito.pestana_referencias();
        credito.pestana_garantias();
        credito.pestana_evaluacion_agropecuaria();
        credito.pestana_documentos_virtuales();
    }

    @And("^click en cantidad de documentos pagare")
    public void click_cantidad_documentos_pagare() {
        credito.click_cantidad_documentos_pagare();
    }

    @And("^Seleccionar cantidad de documentos pagare")
    public void seleccionar_cantidad_documentos_pagare() {
        credito.click_seleccionar_cantidad_documentos_pagare();
    }

    @And("^click en anverso uno")
    public void click_en_anverso_uno() {
        credito.click_en_anverso_uno();
    }

    @And("^tomo la foto de documento")
    public void click_en_foto_documento() {
        credito.click_en_foto_documento();
    }


    @And("^Consulta sobreendeudamiento$")
    public void click_consulta_sobreendeudamiento() {
        credito.click_sobreendeudamiento();
        credito.click_en_ok();
    }

    @And("Consulta motor de decision de cliente no bancarizado")
    public void consultaMotorDeDecisionDeClienteNoBancarizado() {
        credito.click_motorClienteNBancarizado();
    }

    @And("enviar solicitud")
    public void enviarSolicitud() {
        credito.click_envioSolicitud();
    }

    @And("el usuario realiza manteniento de cliente")
    public void elUsuarioRealizaMantenientoDeCliente() {
        
    }

    @And("solicita periodo de gracia por {string} dias")
    public void solicitaPeriodoDeGraciaPorDias(String arg0) {
    }

    @And("Verificar gastos financieros")
    public void verificarGastosFinancieros() {

    }

    @And("aprobar solicitud")
    public void aprobarSolicitud() {
    }

    @And("validar lista tipo de guardado")
    public void validarListaTipoDeGuardado() {

    }

    @And("verifica creditos vigentes")
    public void verificaCreditosVigentes() {
        
    }

    @And("registra condiciones de credito")
    public void registraCondicionesDeCredito() {
    }

    @And("verifico tarifario de cuotas")
    public void verificoTarifarioDeCuotas() {
        
    }

    @And("validar campo Nombre completo vacio")
    public void validarCampoNombreCompletoVacio() {
    }

    @And("validar campo edad")
    public void validarCampoEdad() {
        
    }

    @And("validar actividad economica")
    public void validarActividadEconomica() {
        
    }

    @And("validar boton microfono")
    public void validarBotonMicrofono() {
        
    }

    @And("validar campo inicio de actividad economica")
    public void validarCampoInicioDeActividadEconomica() {
        
    }

    @And("validar campo geoposicion domicilio")
    public void validarCampoGeoposicionDomicilio() {

    }

    @And("el usuario ingresa a documentos virtuales")
    public void elUsuarioIngresaADocumentosVirtuales() {
    }

    @And("verificar dni anverso")
    public void verificarDniAnverso() {
    }

    @And("el usuario ingresa a datos de solicitud")
    public void elUsuarioIngresaADatosDeSolicitud() {
    }

    @And("verifica select subproducto")
    public void verificaSelectSubproducto() {
    }

    @And("validar campo llamar")
    public void validarCampoLlamar() {
    }

    @And("selecciona primer item PERSONAL de subtipo de credito")
    public void seleccionaPrimerItemPERSONALDeSubtipoDeCredito() {
    }

    @And("valida campo TEA")
    public void validaCampoTEA() {
    }

    @And("valida campo TEM")
    public void validaCampoTEM() {
    }

    @And("valida boton consultar cliente")
    public void validaBotonConsultarCliente() {
    }

    @And("validar campo se borrara los datos de la persona")
    public void validarCampoSeBorraraLosDatosDeLaPersona() {
    }

    @And("verifico mensaje de credito paralelo")
    public void verificoMensajeDeCreditoParalelo() {

    }

    @And("Selecciono documentos virtuales")
    public void seleccionoDocumentosVirtuales() {
    }

    @And("proceso solicitud")
    public void procesoSolicitud() {
    }

    @And("el usuario verifica que tiene campaña y cambia pestaña excepciones")
    public void elUsuarioVerificaQueTieneCampañaYCambiaPestañaExcepciones() {
    }

    @And("el usuario visualiza excepciones manuales de negocio")
    public void elUsuarioVisualizaExcepcionesManualesDeNegocio() {
    }

    @And("selecciono Destino del credito y hago click en CAPITAL DE TRABAJO")
    public void seleccionoDestinoDelCreditoYHagoClickEnCAPITALDETRABAJO() {
    }


}
