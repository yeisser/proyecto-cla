package runner;

import io.cucumber.testng.CucumberOptions;
import io.cucumber.testng.AbstractTestNGCucumberTests;

@CucumberOptions(
        features = {"src/test/java/features"},
        glue = {"stepDefinations","utility"},
        plugin = {"pretty","io.qameta.allure.cucumber5jvm.AllureCucumber5Jvm"},
        tags = {"@mobile"})

public class RunnTest extends AbstractTestNGCucumberTests{

}
