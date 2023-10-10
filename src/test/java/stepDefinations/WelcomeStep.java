package stepDefinations;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.testng.Assert;
import screens.HomeScreen;
import screens.LoginScreen;
import screens.WelcomeScreen;
import screens.recoveries_screens;
import task.Recoveries_Task;
import utility.Constantes;
import utility.Element;
import utility.UIOperation;
import utility.Util;

public class WelcomeStep {
    LoginScreen login = new LoginScreen();
    WelcomeScreen welcome = new WelcomeScreen();
    recoveries_screens gestionmora = new recoveries_screens();

    @Given("^se visualiza la bienvenida al app y el usuario hace click en iniciar con la organización \"([^\"]*)\"$")
    public void elUsuarioIngresaAppBienvenida(String organizacion) {
       //Util.implicitWait(50);
        //welcome.btn_iniciar();
        welcome.btn_finalizar();
        Util.implicitWait(50);
        welcome.btn_finalizar();
        Util.implicitWait(50);
        welcome.btn_finalizar();
        Util.implicitWait(50);
        welcome.btn_finalizar();
        Util.implicitWait(50);
        welcome.btn_finalizar();
        //int repeticionesSiguiente = 0;
        //while (repeticionesSiguiente <= 5) {

         //   repeticionesSiguiente = repeticionesSiguiente + 1;
          //  Util.implicitWait(15);
        //}
        welcome.btn_permitir_fotos_videos();

        welcome.btn_permitir_calendario();
        welcome.btn_permitir_fotos_videos2();
        welcome.ingresa_organizacion(organizacion);
        welcome.btn_continuar();

    }
}