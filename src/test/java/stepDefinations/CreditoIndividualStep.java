package stepDefinations;

import io.cucumber.java.en.And;
import screens.recoveries_screens;

public class CreditoIndividualStep {
    recoveries_screens gestionCliente = new recoveries_screens();


    @And("el usuario selecciona el tipo de documento {string} e ingresa el numero de documento {string}")
    public void elUsuarioSeleccionaElTipoDeDocumentoEIngresaElNumeroDeDocumento(String TipoDocumento, String NumDocumento) {
        gestionCliente.seleccionTipoDocumento(TipoDocumento, NumDocumento);
    }

    @And("Autoriza el tratamiento de sus datos personales")
    public void autorizaElTratamientoDeSusDatosPersonales() {
        gestionCliente.autorizaTratamientoDatos();
    }

    @And("el usuario autoriza el envio de publicidad")
    public void elUsuarioAutorizaElEnvioDePublicidad() {
        gestionCliente.autorizaPublicidad();
    }

    @And("el usuario consulta el cliente")
    public void elUsuarioConsultaElCliente() throws InterruptedException{
        gestionCliente.consultaCliente();
        Thread.sleep(15);
        gestionCliente.aceptarModalConsultaCliente();
    }

    @And("el usuario consulta la posicion consolidada")
    public void elUsuarioConsultaLaPosicionConsolidada() throws InterruptedException{
        gestionCliente.consultaPosicionConsolidada();
        gestionCliente.aceptarModalPosicionConsolidada();
    }

    @And("el usuario verifica que tiene campaña y cambia de pestaña")
    public void elUsuarioVerificaQueTieneCampañaYCambiaDePestaña() {
    gestionCliente.verificarCampana();
    }

    @And("el usuario realiza click en tipo de ingreso {string}")
    public void elUsuarioRealizaClickEnTipoDeIngreso(String TipoIngreso) {
        gestionCliente.verificarelementoVisible();
        gestionCliente.seleccionarTipoIngreso();
    }
}
