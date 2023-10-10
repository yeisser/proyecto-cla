package stepDefinations;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.testng.Assert;
import screens.HomeScreen;
import utility.Util;

public class HomeStep {

    HomeScreen home = new HomeScreen();

    @Then("^validar realice login exitosamente$")
    public void validarRealiceLoginExitosamente() {
        Util.waitSleep(5000);
        home.enter_skyp();
    }

    @And("^titulo home es (.*)$")
    public void tituloHomeEsOrdenes(String title) {
        Util.waitSleep(8000);
        Assert.assertEquals(home.get_title_home(),title);
    }
    @And("^el cierra la session del App$")
    public void elCierraLaSessionDelApp() {
        home.close_session_app();
    }
}
