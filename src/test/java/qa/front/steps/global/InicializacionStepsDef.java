package qa.front.steps.global;

import io.cucumber.java.Before;
import io.cucumber.java.es.Dado;
import net.serenitybdd.screenplay.actors.OnStage;
import net.serenitybdd.screenplay.actors.OnlineCast;
import qa.front.screenplay.global.GlobalConfig;
import qa.front.screenplay.global.abilities.Identificarse;
import qa.front.screenplay.global.tasks.Navegar;

import static net.serenitybdd.screenplay.actors.OnStage.theActorCalled;
import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;

public class InicializacionStepsDef {

    //region Before
    @Before
    public void setTheStage() {
        OnStage.setTheStage(new OnlineCast());
    }
    //endregion

    //region Dado
    @Dado("^el usuario se encuentra en la página de Crombie$")
    public void elUsuarioSeEncuentraEnLaPantallaInicial() {
        String actor = "usuario";
        theActorCalled(actor).can(Identificarse.como(actor));
        theActorInTheSpotlight().attemptsTo(Navegar.hacia(GlobalConfig.GET_LOGIN_URL));
    }
    //endregion
}
