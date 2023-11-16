package stepDefinations;

import io.cucumber.java.en.*;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import screens.ModuleEngineScreen;
import screens.recoveries_screens;

public class ModuleEngineStep {
    recoveries_screens gestionmora = new recoveries_screens();
    ModuleEngineScreen engine = new ModuleEngineScreen();
    WebDriver driver;
    @Given("^el usuario se conecta a kata engine e ingresa al login$")
    public void conexion_enginee_login() {
        System.setProperty("webdriver.chrome.driver","src//test//resources//drivers//chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.navigate().to("https://qa.andes.engine.kata-software.com/login");
        gestionmora.espera_un_min();
    }
    @And("ingresa al home de enginee y hace click en Total de pendientes")
    public void elUsuarioHaceClickEnLaOpcionTotalPendientes() {
        engine.click_total_pendientes();

    }
    @And("selecciona el nro de solicitud en engine")
    public void selecciona_nro_solicitud_engine() {
        engine.click_nro_solicitud();

    }
    @And("hago click en Comite de crédito en enginee")
    public void click_comite_enginee() {
        engine.click_comite_enginee();

    }


}

