package qa.front.screenplay.global;

import net.serenitybdd.core.environment.EnvironmentSpecificConfiguration;

import static net.serenitybdd.core.environment.WebDriverConfiguredEnvironment.getEnvironmentVariables;

public class GlobalConfig {

    public static final String GET_BASE_URL = EnvironmentSpecificConfiguration.from(getEnvironmentVariables()).getProperty("webdriver.base.url");

    public static final String GET_LOGIN_URL = GET_BASE_URL;


    public static final String GET_PATH_TO_FILE_RESOURCES = "src/test/resources/files/";
}
