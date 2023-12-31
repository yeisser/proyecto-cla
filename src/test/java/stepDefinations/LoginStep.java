package stepDefinations;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;
import screens.LoginScreen;
import screens.WelcomeScreen;
import utility.Chrome;
import utility.Util;

public class LoginStep {

    WelcomeScreen welcome=new WelcomeScreen();
    LoginScreen login = new LoginScreen();
    Chrome enginee = new Chrome();
    screens.ModuleEngine engine = new screens.ModuleEngine();


    @Given("^carga la aplicacion Formiik New$")
    public void cargaLaAplicacionFormiikNew() {
        login.iniciar_session();
    }
    @When("^el usuario ingresa al app y hago onbording con \"([^\"]*)\" y \"([^\"]*)\"$")
    public void elUsuarioIngresaAppOnbording(String user, String pass) {
        login.enter_onbording_appium(user, pass);
        login.conditionContinue();
        Util.waitSleep(250);
    }
    @When("^el usuario ingresa al engine y hago onbording con \"([^\"]*)\" y \"([^\"]*)\"$")
    public void usuario_ingresa_engine(String user, String pass) {
        login.ingresa_user_selenium(user);
        login.ingresa_pass_selenium(pass);
        engine.click_iniciar_sesion();
    }


    @When("^el ingresa \"([^\"]*)\" y \"([^\"]*)\"$")
    public void elIngresaY(String user, String pass) {
        login.enter_user_pass(user,pass);
    }
    
    @And("^el presiona enter en Sign in$")
    public void elPresionaEnterEnSignIn() {
        login.enter_sign_in();
    }

    @Then("^el mensaje cuando no se ingresa usuario sera (.*)$")
    public void elMensajeEsperadoSera(String mensaje_esperado) {
        Assert.assertEquals(login.get_mensaje_error_usuario(),mensaje_esperado);
    }

    @Then("^el mensaje cuando no se ingresa password sera (.*)$")
    public void elMensajeCuandoNoSeIngresaPasswordSeraToSignInStartByEnteringAUserID(String mensaje_esperado) {
        Assert.assertEquals(login.get_mensaje_error_password(),mensaje_esperado);
    }

    @Then("^el mensaje cuando usuario o password son incorrectos sera (.*)$")
    public void elMensajeCuandoUsuarioOPasswordSonIncorrectosSeraToSignInStartByEnteringAUserID(String mensaje_esperado) {
        Assert.assertEquals(login.get_mensaje_error_user_or_pass(),mensaje_esperado);
    }


}
