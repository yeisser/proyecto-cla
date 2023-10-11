package stepDefinations;

import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import org.testng.Assert;
import screens.LoginScreen;
import screens.recoveries_screens;

public class ModuleRecoveriesStep {
    recoveries_screens gestionmora = new recoveries_screens();
    LoginScreen login=new LoginScreen();

    @And("^el usuario ingresa al home y hago click en el boton de nueva orden$")
    public void elUsuarioIngresayhagoClickNuevaOrden() {
        gestionmora.enter_nueva_orden();
    }



    @When("^el usuario hago click en la opcion cobranza del menu de Tipo de proceso$")
    public void elUsuarioclickCobranzaMenuProcesos() {
        gestionmora.click_cobranza();

    }

    @And("^hago click en el boton siguiente$")
    public void cliEnSiguiente() {
        gestionmora.espera_un_min();
        gestionmora.click_siguiente();

    }
    @And("^hago click en consultar cartera$")
    public void clickconsultarcartera() {
        gestionmora.click_consultar_catera();
        gestionmora.click_en_ok();
    }

    @And("^hago click en tabla clientes en mora")
    public void click_tabla_clientes_mora() {
        gestionmora.click_tabla_clientes_mora();
    }

    @When("^hago click en el boton CREAR del menu Confirmacion$")
    public void cliEnBotonCrear() {

        gestionmora.click_crear_seccion_confirmacion();
    }
    @When("^visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento$")
    public void click_tipo_documento() {
        gestionmora.click_cb_tipo_documento();
    }
    @When("^hago click en Tipo de documento$")
    public void click_tipo_documento_dos() {
        gestionmora.click_tipo_documento();
    }
    @When("^selecciona dentro del menu desplegable el elemento DNI$")
    public void click_dni() {
        gestionmora.click_dni();
    }
    @And("^ingresa el nro del Documento \"([^\"]*)\"$")
    public void ingresa_dni(String dni) {
        gestionmora.ingresa_dni(dni);
    }
    @And("^Ingreso numero de celular contacto \"([^\"]*)\"$")
    public void ingresa_celular_contacto(String celular) {
        gestionmora.ingresa_celular_contacto(celular);
    }
    @And("^Agrego un titulo al evento")
    public void ingresa_evento() {
        gestionmora.ingresa_evento("Nuevo evento");
        gestionmora.click_hora_inicio();
        gestionmora.click_cancelar_Evento();

    }

    @And("^espero un min antes de volver a ingresar la hora fin")
    public void espera_y_click_hora_fin() {
        gestionmora.espera_un_min();
    }

    @And("^click en hora fin")
    public void click_hora_fin_x_segunda_vez() {
        gestionmora.click_hora_fin_1();
        gestionmora.click_aceptar_evento();
    }

    @When("^guardo evento")
    public void guardar_evento() {
        gestionmora.click_guarda_event();
    }

    @And("^termino evento")
    public void termino_evento() {
        gestionmora.click_termino_evento();
    }

    @And("^se registra el monto cero")
    public void registra_monto() {
        gestionmora.ingresa_monto_cero("0");
    }

    @And("^valida que haga click en cantidad de fotos de visita")
    public void valida_cantidad_fotos() {
        gestionmora.click_cantidad_fotos();
    }

    @And("^valida mensaje de advertencia (.*)$")
    public void valida_mensaje_emergencia(String mensaje_esperado) {
        Assert.assertEquals(gestionmora.valida_mensaje_advertencia(), mensaje_esperado);
    }

    @And("^verifico el nombre el desplegable (.*)$")
    public void verificar_desplegable_relacion_titular(String mensaje_esperado) {
        Assert.assertEquals(gestionmora.get_campo_relacion_titular(), mensaje_esperado);
    }

    @And("^valida que al seleccionar acción visita a titular se muestre etiqueta (.*)$")
    public void verifica_etiqueta_digitalizacion(String mensaje_esperado) {
        Assert.assertEquals(gestionmora.get_campo_digitalizacion(), mensaje_esperado);
    }

    @And("^hago click en compromiso de pago")
    public void ingresa_valor() {
        gestionmora.ingresa_valor_resultados_gestion();
    }

    @And("^selecciono crear recordatorio")
    public void selecciona_crear_recordatorio() {
        gestionmora.click_crear_recodatorio();
    }

    @And("^hago click en crear recordatorio")
    public void click_crear_recordatorio() {
        gestionmora.click_nuevo_evento();
    }

    @And("^ingresa el compromiso de pago version 2 \"([^\"]*)\"$")
    public void metodo_tempora_ingresa_valor_resultado_gestion(String valor) {
        gestionmora.ingresa_valor_temporal_resultados_gestion(valor);
    }


    @And("^hago click en el deplegable Accion y seleccion \"([^\"]*)\"$")
    public void desplegable_accion(String accion) {
        gestionmora.ingresa_accion(accion);
    }

    @And("^selecciono tipo de contacto y elijo otros")
    public void seleccion_otros() {
        gestionmora.click_tipo_contactos();
        gestionmora.selecciona_otros_opcion_tipo_contacto();
    }

    @When("^ingresa el nro del celular \"([^\"]*)\"$")
    public void ingresa_celular(String celular) {
        gestionmora.ingresa_celular(celular);
    }

    @And("^hago click consultar creditos y hago click en ok")
    public void consultar_creditos() {
        gestionmora.consultar_creditos();
        gestionmora.click_buton_ok();
    }
    @And("^hago click en ok")
    public void click_ok(){
        gestionmora.click_buton_ok();
    }

    @When("^valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos")
    public void validar_desplegable_creditos() {
        gestionmora.click_cb_tipo_documento();
        gestionmora.click_buton_desplegable_creditos();
    }

    @When("^valido la etiqueta de opciones para un cliente con n dias de atraso")
    public void valido_tres_dias_atraso() {
        Integer contar_a = 0;
        Integer totalCadena = gestionmora.get_validar_desplegable_creditos().length();
        String armando_palabra = "";
        String cadena_completa = gestionmora.get_validar_desplegable_creditos().toString();

        System.out.println("Mensaje devuelto: " + gestionmora.get_validar_desplegable_creditos());

        gestionmora.get_validar_desplegable_creditos().toString();
        for (int i = totalCadena; i >= 0; i -= 1) {
            String valor = cadena_completa.substring(totalCadena - 1, totalCadena).toString();
            armando_palabra = armando_palabra + valor.toString();
            if (valor.equals("A")) {
                totalCadena = totalCadena - 1;
                if (armando_palabra.equals("3 :osartA")) {
                    Assert.assertEquals(armando_palabra, "3 :osartA");
                } else if (armando_palabra.equals("4 :osartA")) {
                    Assert.assertEquals(armando_palabra, "4 :osartA");
                } else {
                    Assert.assertEquals(armando_palabra, "No es el dato esperado");
                }
            }
            i--;
            totalCadena = totalCadena - 1;
        }


    }

    @When("^valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos atraso 3")
    public void validar_tres_dias() {
        gestionmora.validar_tres_dias();
    }

    @And("^valido la funcionalidad del boton consultar cliente para 7 dias de atraso")
    public void validar_buton_consultar_cliente() {
        gestionmora.validar_buton_consultar_cliente();
        gestionmora.click_buton_ok();
    }

    @And("^selecciono la pestaña nuevos datos de contacto")
    public void seleccion_pestana_datos_contacto() {
        gestionmora.seleccion_pestana_datos_contactos();
    }

    @And("^selecciono tipo de telefono celular")
    public void selecciona_tipo_telefono_pestana_datos_contacto() {
        gestionmora.selecciona_tipo_celular();
    }

    @And("^ingresa el telefono celular")
    public void ingresa_telefono_celular() {
        gestionmora.hago_click_desplegable_celular();
    }

    @And("^selecciono ubicacion del mapa")
    public void selecciono_ubicacion_map() {
        gestionmora.hago_click_ubicacion_mapa();
    }

    @And("^guardo ubicacion")
    public void guarda_ubicacion() {
        gestionmora.guarda_ubicacion();
    }

    @And("^valido mensaje (.*)$")
    public void valido_mensaje(String mensaje_esperado) {
        //if (!home.isVisible_progress_bar())
        Assert.assertEquals(gestionmora.get_mensaje_ultimas_gestiones(), mensaje_esperado);
    }

    @And("^Valido que se muestre un mensaje (.*)$")
    public void valido_mensaje_gestiones(String mensaje_esperado) {
        Assert.assertEquals(gestionmora.get_mensaje_gestiones_no_realizadas(), mensaje_esperado);
    }

    @And("^cuando selecciono Visita a Titular se visualiza el campo (.*)$")
    public void valida_campo_geoposicion(String mensaje_esperado) {
        Assert.assertEquals(gestionmora.get_campo_geoposicion(), mensaje_esperado);
    }

    @And("^verifico el campo (.*)$")
    public void verificar_campo_nombre_contacto(String mensaje_esperado) {
        Assert.assertEquals(gestionmora.get_campo_nombre_contacto(), mensaje_esperado);
    }

    @And("^hago click en desplegable (.*)$")
    public void void_desplegable_resultado_gestion() {
        gestionmora.click_resultado_gestion();
    }

    @And("^Verifico que el celular sea el (.*)$")
    public void valido_celular_cliente(String mensaje_esperado) {
        Assert.assertEquals(gestionmora.get_celular_cliente(), mensaje_esperado);
    }

    @And("^Verifico que el celular sea de 9 digitos (.*)$")
    public void valido_celular_cliente_nueve_digitos(String mensaje_esperado) {
        Assert.assertEquals(gestionmora.get_celular_cliente_nueve_digitos(), "");
    }

    @And("^verifico que no se pueda escribir el numero de celular")
    public void verificado_digito_ocho() {
        Assert.assertEquals(gestionmora.get_celular_cliente(), "");
    }

    @When("^valido tres ultimas gestiones haciendo click en ultima gestion realizada")
    public void validar_tres_ultimas_gestiones() {
        gestionmora.validar_tres_ultimas_gestiones();
    }

    @And("^ubico la pestaña gestion")
    public void validar_campo_celular_pestaña_gestion() {
        gestionmora.validar_campo_celular_pestaña_gestion();
    }

    @And("^hago click en el desplegable Accion y selecciono llamada")
    public void validar_opcion_llamada() {
        gestionmora.validar_opcion_llamada();
    }

    @And("^cuando selecciono Visita a Titular se visualiza geoposición gestión")
    public void selecciono_visita_geolocalizacion() {
        gestionmora.seleccionar_geopocision_gestion();
    }

    @And("^seleciono tipo de contacto la opcion otros ordenado alfabeticamente de la lista \"([^\"]*)\"$")
    public void selecciono_tipo_contacto(String lista) {
        gestionmora.seleccino_tipo_contactos(lista);
    }

    @And("^Verifico el boton llamar")
    public void validar_boton_llamar() {
        gestionmora.validar_boton_llamar();
    }

    @And("^valido que se muestren las garantias del credito seleccionado")
    public void validar_garantias_credito_seleccionado() {
        gestionmora.validar_garantias_credito_seleccionado();
    }

    @When("^valido saldo deudor")
    public void validar_saldo_deudor() {
        gestionmora.validar_saldo_deudor();
    }

    @When("^valido la funcionalidad del boton de reporte posicion consolidada")
    public void validar_funcionalidad_reporte_posicion_consolidada() {
        gestionmora.validar_buton_posicion_consolidada();
    }

    @And("^selecciona dentro del menu desplegable el elemento CE$")
    public void click_ce() {
        gestionmora.click_ce();
    }

    @And("^selecciona dentro del menu desplegable el elemento RUC$")
    public void click_ruc() {
        gestionmora.click_ruc();
    }

    @And("^seleciono navegar hacia arriba$")
    public void click_seleccion_navegar_arriba() {
        gestionmora.click_navegar_arriba();
    }

    @And("^hago click en la opcion Gestion de mora del menu Tipo de formulario$")
    public void clickEnGestionMora() {
        gestionmora.espera_un_min();
        gestionmora.click_gesion_mora();
    }

    @And("^hago click en la opcion Reporte de mora del menu Tipo de formulario$")
    public void clickEnReporteMora() {
        gestionmora.click_reporte_mora();
    }



    @When("^el ingresa password \"([^\"]*)\"$")
    public void elIngresaP(String pass) {
        gestionmora.enter_pass(pass);
    }


    @And("el usuario ingresa al home y hace click en el boton de nueva orden")
    public void elUsuarioIngresaAlHomeYHaceClickEnElBotonDeNuevaOrden() {
        gestionmora.enter_nueva_orden2();

    }

    @And("el usuario hago click en la opcion credito del menu de Tipo de proceso")
    public void elUsuarioHagoClickEnLaOpcionCreditoDelMenuDeTipoDeProceso() {
        gestionmora.click_credito();
        gestionmora.click_siguiente2();
    }

    @And("el usuario hace click en la opcion {string} del menu")
    public void elUsuarioHaceClickEnLaOpcionDelMenu(String tipoFormulario) {
        gestionmora.click_TipoFormulario(tipoFormulario);

    }

    @And("el usuario hace click en boton crear")
    public void elUsuarioHaceClickEnBotonCrear() {
        gestionmora.click_crear_evento();

    }


}
