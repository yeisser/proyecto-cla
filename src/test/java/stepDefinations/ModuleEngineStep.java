package stepDefinations;

import io.cucumber.java.en.*;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import screens.recoveries_screens;

public class ModuleEngineStep {
    recoveries_screens gestionmora = new recoveries_screens();
    screens.ModuleEngine engine = new screens.ModuleEngine();
    WebDriver driver;
    @Given("^el usuario se conecta a kata engine e ingresa al login$")
    public void conexion_enginee_login() {
        System.setProperty("webdriver.chrome.driver","src//test//resources//drivers//chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.navigate().to("https://qa.andes.engine.kata-software.com/login");
        gestionmora.espera_un_min();
    }




}

