package qa.front.acceptancetests;

import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(tags = "@Escenario:E2E or @Escenario:HP",
        plugin = {"pretty", "json:target/destination/cucumber.json"},
        features = "src/test/resources/features/",
        glue = "qa.front.steps")
public class AcceptanceTestSuite {
}
