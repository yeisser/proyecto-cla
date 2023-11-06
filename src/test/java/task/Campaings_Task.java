package task;

import org.openqa.selenium.By;
import utility.Constantes;
import utility.Element;

public class Campaings_Task {
    public static By btn_credito = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Credito']");
    public static By opt_credito_individual = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Credito_Individual']");
    public static By txtview_perfil = Element.Mobile_Element(Constantes.XPATH, "//*[@text='El perfil seleccionado no es válido para el flujo individual']");
    public static By txtview_unoMismo = Element.Mobile_Element(Constantes.XPATH, "//*[@text='No puede otorgar créditos a sí mismo o familiares']");
    public static By chk_tratamiento_datos = Element.Mobile_Element(Constantes.XPATH, "//*[@class='android.widget.CheckBox']");
    public static By btn_mensaje_voz = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.kata.formiik:id/widget_audioEdit']");
    public static By btn_iniciar_grabacion = Element.Mobile_Element(Constantes.XPATH, "//*[@text='INICIAR GRABACIÓN DE VOZ']");
    public static By btn_finalizar_grabacion = Element.Mobile_Element(Constantes.XPATH, "//*[@text='FINALIZAR GRABACIÓN DE VOZ']");
    public static By btn_consultar_cliente = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.kata.formiik:id/widget_update']");
    public static By opt_tipo_credito = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[6]/android.widget.FrameLayout/androidx.cardview.widget.CardView/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.Spinner");
    public static By opt_microempresas = Element.Mobile_Element(Constantes.XPATH, "//*[@text='MICROEMPRESAS']");
    public static By opt_consumo = Element.Mobile_Element(Constantes.XPATH, "//*[@text='CONSUMO']");
    public static By click_subtipo_credito = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[5]/android.widget.FrameLayout/androidx.cardview.widget.CardView/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout[4]/android.widget.LinearLayout/android.widget.Spinner");
    public static By click_primer_item_sub_tipo = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.TextView");
    public static By click_primer_item_sub_tipo_consumo = Element.Mobile_Element(Constantes.XPATH, "//*[@text='CONSUMO']");
    public static By click_sub_tipo_empresarial = Element.Mobile_Element(Constantes.XPATH, "//*[@text='EMPRESARIAL']");
    public static By click_selecciona_pymes = Element.Mobile_Element(Constantes.XPATH, "//*[@text='PYME']");
    public static By click_selecciona_facilito = Element.Mobile_Element(Constantes.XPATH, "//*[@text='PYME-FACILITO']");
    public static By click_primer_item_producto = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.TextView");
    public static By click_selecciona_subproducto = Element.Mobile_Element(Constantes.XPATH, "/hierarchy/android.view.ViewGroup/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.view.View[4]/android.widget.TextView");
    public static By click_selecciona_subproducto_convenio = Element.Mobile_Element(Constantes.XPATH, "//*[@text='CONVENIO']");
    public static By click_selecciona_subproducto_credichamba = Element.Mobile_Element(Constantes.XPATH, "//*[@text='PERSONAL-TU CREDI CHAMBA']");

    public static By click_tipo_operacion = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[7]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Spinner");
    public static By click_otorgamiento = Element.Mobile_Element(Constantes.XPATH, "//*[@text='OTORGAMIENTO']");
    public static By click_modalidad_credito_principal = Element.Mobile_Element(Constantes.XPATH, "//*[@text='PRINCIPAL']");

    public static By click_modalidad_credito = Element.Mobile_Element(Constantes.XPATH, "(//android.view.View[@content-desc=\"Menú desplegable\"])[6]/android.widget.EditText/android.view.View");

    public static By click_producto = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Datos de solicitud']");
    public static By click_producto_convenio = Element.Mobile_Element(Constantes.XPATH, "//*[@text='CONVENIO']");
    public static By click_producto_personal = Element.Mobile_Element(Constantes.XPATH, "//*[@text='PERSONAL']");


    public static By btn_selecciona_ubigeo = Element.Mobile_Element(Constantes.XPATH, "//*[@resource-id='com.kata.formiik:id/widget_update']");
    public static By verifica_geolocalizacion = Element.Mobile_Element(Constantes.XPATH, "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[11]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By opt_tipo_ingreso = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.TextView");
    public static By btn_consultar_posicion_consolidada = Element.Mobile_Element(Constantes.XPATH, "//android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[11]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By btn_consultar_tabla_posicion_consolidada = Element.Mobile_Element(Constantes.ID, "com.kata.formiik:id/widget_table");
    public static By opt_envio_publicidad = Element.Mobile_Element(Constantes.XPATH, "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[2]");
    public static By txt_tipo_credito = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[7]/android.widget.FrameLayout/androidx.cardview.widget.CardView/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.Spinner/android.widget.LinearLayout/android.widget.TextView");
    public static By txt_datos_asesor= Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.AutoCompleteTextView");
    public static By chk_registro_fecha = Element.Mobile_Element(Constantes.XPATH, "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[8]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.CheckBox");
    public static By opt_seguro_vida_no = Element.Mobile_Element(Constantes.XPATH, "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[10]/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[2]");
    public static By btn_calculo_plazo = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[7]/android.widget.FrameLayout/androidx.cardview.widget.CardView/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout[3]/android.widget.ImageButton");
    public static By btn_consulta_niveles = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[7]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By otp_click_selecciona_tasa = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[9]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Spinner/android.widget.LinearLayout/android.widget.TextView");
    public static By txt_datos_computo= Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.TextView");

    public static By click_normal_selecciona_tasa = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.TextView");
    public static By btn_simulador_creditos = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[8]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By btn_plan_pagos = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By mnu_mantenimiento_cliente = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Mantenimiento cliente']");
    public static By mnu_datos_solicitud = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Datos de solicitud']");
    public static By btn_pestana_excepciones= Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout[@content-desc=\"Excepciones\"]/android.widget.LinearLayout/android.widget.TextView");
    public static By btn_pestana_referencias= Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout[@content-desc=\"Referencias, vínculados, Deudas\"]/android.widget.LinearLayout/android.widget.TextView");
    public static By btn_pestana_garantias= Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout[@content-desc=\"Garantías\"]/android.widget.LinearLayout/android.widget.TextView");
    public static By btn_pestana_evaluacion_agropecuaria=Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout[@content-desc=\"Evaluación Agropecuario\"]/android.widget.LinearLayout/android.widget.TextView");
    public static By btn_documentos_virtuales=Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout[@content-desc=\"Documentos Virtuales\"]/android.widget.LinearLayout/android.widget.TextView");
    public static By opt_cantidad_documento_pagare=Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Spinner");
    public static By opt_seleccionar_cantidad_documento_pagare=Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.TextView");
    public static By click_en_anverso_uno=Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[4]/android.widget.FrameLayout/androidx.cardview.widget.CardView/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout[2]/android.widget.ImageButton");
    public static By click_en_tomar_fotodocumento=Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ImageButton");
    public static By btn_sobreendeudamiento=Element.Mobile_Element(Constantes.XPATH,"//android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[9]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By txt_monto = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[12]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText");
    public static By txt_cuotas = Element.Mobile_Element(Constantes.XPATH, "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText");
    public static By btn_consultar_cliente_pestana_consulta_cliente = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[4]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By btn_ok = Element.Mobile_Element(Constantes.XPATH, "//android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button");
    public static By click_subproducto_temp = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[5]/android.widget.FrameLayout/androidx.cardview.widget.CardView/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout[8]/android.widget.LinearLayout/android.widget.Spinner");
    public static By click_ampliacion = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.TextView");
    public static By click_destino = Element.Mobile_Element(Constantes.XPATH, "(//android.view.View[@content-desc=\"Menú desplegable\"])[3]/android.widget.EditText/android.view.View");
    public static By click_agua_saneamiento = Element.Mobile_Element(Constantes.XPATH, "//*[@text='AGUA Y SANEAMIENTO']");
    public static By click_libre_disponibilidad = Element.Mobile_Element(Constantes.XPATH, "//*[@text='LIBRE DISPONIBILIDAD']");

    public static By click_tipo_cronograma = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[6]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Spinner");
    public static By selecciono_tipo_cronograma = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.TextView");
    public static By selecciono_periodo_fijo = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Periodo Fijo']");
    public static By click_frecuencia = Element.Mobile_Element(Constantes.XPATH, "(//android.view.View[@content-desc=\"Menú desplegable\"])[4]/android.widget.EditText/android.view.View/android.view.View[1]");
    public static By selecciono_frecuencia_bimensual = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Bimensual']");
    public static By selecciono_menu_datos_conyuge = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Datos del cónyuge']");
    public static By selecciono_menu_excepciones = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Excepciones']");
    public static By click_reglas_caja = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.compose.ui.platform.m1/android.view.View/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View/android.widget.Button");
    public static By selecciona_regla_tres_entidades = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Fiador Solidario PN: Máximo 03 entidades incluido la del cónyuge.']");

    public static By click_aceptar = Element.Mobile_Element(Constantes.XPATH, "//*[@text='ACEPTAR']");
    public static By selecciono_cuotas_libres_no = Element.Mobile_Element(Constantes.XPATH, "//android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[10]/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[2]");
    public static By btn_actividad_principal = Element.Mobile_Element(Constantes.XPATH, "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[9]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By btn_actividad_secundaria_si = Element.Mobile_Element(Constantes.XPATH, "//android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[17]/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[1]");
    public static By btn_click_actividad_secundaria = Element.Mobile_Element(Constantes.XPATH, "//android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[14]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By btn_actividad_secundaria_no = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout[12]/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[2]");
    public static By btn_ubigeo = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[10]/android.widget.LinearLayout/android.widget.ImageButton");
    public static By btn_tipo_ingreso = Element.Mobile_Element(Constantes.XPATH, "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[7]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Spinner");
    public static By opt_tipo_persona = Element.Mobile_Element(Constantes.XPATH, "//android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[8]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Spinner");
    public static By opt_seleccion_ruc_con_negocio = Element.Mobile_Element(Constantes.XPATH, "//android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.TextView");
    public static By opt_opt_cargo_otros = Element.Mobile_Element(Constantes.XPATH, "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[10]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.AutoCompleteTextView");
    public static By opt_otros = Element.Mobile_Element(Constantes.XPATH, "//android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[9]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.AutoCompleteTextView");
    public static By btn_session = Element.Mobile_Element(Constantes.ID, "com.kata.formiik:id/fragmentCurrentSessionFloatingActionButton");
    public static By txt_documento = Element.Mobile_Element(Constantes.ID, "com.kata.formiik:id/textedit");

    public static By campo_Cuota = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Nro. de cuotas']");
    public static By campo_Monto = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Monto Solicitado']");
    public static By boton_SimularCredito = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[3]/android.view.View/android.widget.Button");
    public static By boton_Telefono = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[4]/android.view.View/android.widget.Button");
    public static By campo_InicioActividadEconomica = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[4]/android.view.View/android.widget.Button");
    public static By boton_GeoposicionDomicilio = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[4]/android.widget.Button");
    public static By boton_llamar = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button");
    public static By campo_Subproducto = Element.Mobile_Element(Constantes.XPATH, "(//android.view.View[@content-desc='Menú desplegable'])[4]/android.widget.EditText/android.view.View/android.view.View[2]");
    public static By campo_SubproductoPersonal = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.widget.TextView");
    public static By boton_ConsultarMotorDeDecisiónClienteNoBancarizado = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[4]/android.view.View/android.widget.Button");
    public static By boton_MensajeVoz = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[3]/android.view.View/android.widget.Button");
    public static By boton_EditarConyugue = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.view.View/android.view.View/android.widget.Button");
    public static By campo_NombreCompletoConyugue = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.widget.EditText[1]/android.view.View");
    public static By campo_EdadConyugue = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.widget.EditText[2]/android.view.View");
    public static By menu_PersonaDatosComplementarios = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Persona - Datos Complementarios']");
    public static By campo_TiempoActividadEconomicaAnio = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.widget.EditText[3]/android.view.View");
    public static By menu_ReferenciasVinculadosDeudas = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Referencias, vínculados, Deudas']");
    public static By menu_Garantias = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Garantías']");
    public static By btn_ConsultarGarantiasTitularConyugue = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.view.View[1]/android.view.View/android.widget.Button");
    public static By btn_Referencias = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.view.View[1]/android.view.View/android.widget.Button");
    public static By btn_AgregarReferencias = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.widget.Button");
    public static By campo_TipoReferencia = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Tipo de referencia']");
    public static By menu_DocumentosVirtuales = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Documentos Virtuales']");
    public static By btn_TitularAnverso = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.view.View[2]/android.view.View/android.widget.Button");
    public static By btn_Deudas = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[6]/android.view.View/android.widget.Button");
    public static By btn_AgregarDeudas = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[2]/android.widget.Button");
    public static By campo_TipoDeuda = Element.Mobile_Element(Constantes.XPATH, "//android.view.View[@content-desc='Menú desplegable'][1]/android.widget.EditText");
    public static By campo_TipoDeudaDirecta = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Directa']");
    public static By campo_Frecuencia = Element.Mobile_Element(Constantes.XPATH, "//*[@text='Frecuencia']");
    public static By campo_CuotasLibres = Element.Mobile_Element(Constantes.XPATH, "//*[@text='¿Cuotas libres?']");






}
