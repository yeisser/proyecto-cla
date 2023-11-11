package stepDefinations;

import io.cucumber.java.en.Given;
import org.openqa.selenium.chrome.ChromeDriver;
import screens.LoginScreen;
import screens.WelcomeScreen;
import screens.recoveries_screens;
import utility.Chrome;
import utility.Util;


public class WelcomeStep {
    LoginScreen login = new LoginScreen();
    WelcomeScreen welcome = new WelcomeScreen();
    Chrome enginee=new Chrome();
    recoveries_screens gestionmora = new recoveries_screens();

    @Given("^se visualiza la bienvenida al app y el usuario hace click en iniciar con la organización \"([^\"]*)\"$")
    public void elUsuarioIngresaAppBienvenida(String organizacion) {
       Util.implicitWait(50);
        welcome.btn_iniciar();
        Util.implicitWait(8);
        int repeticionesSiguiente = 0;
        while (repeticionesSiguiente <= 5) {
            welcome.btn_finalizar();
            repeticionesSiguiente = repeticionesSiguiente + 1;
            Util.implicitWait(15);
        }
        welcome.btn_permitir_fotos_videos();

        welcome.btn_permitir_calendario();
        welcome.btn_permitir_fotos_videos2();
        welcome.ingresa_organizacion(organizacion);
        welcome.btn_continuar();

    }
    @Given("^se visualiza la pantalla de bievenida al enginee y hace click en INICIAR SESIÓN")
    public void bienvenidaEnginee(){
        enginee.getURL();
    }
    @Given("se observa la bienvenida al app y el usuario hace click en iniciar con la organización {string}")
    public void seObservaLaBienvenidaAlAppYElUsuarioHaceClickEnIniciarConLaOrganización(String organizacion2) {
        Util.implicitWait(50);
        welcome.btn_permitir_permisos();
        welcome.ingresa_organizacion2(organizacion2);
        welcome.btn_continuarNew();
    }
}