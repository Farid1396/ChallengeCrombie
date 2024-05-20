package qa.front.screenplay.global.elements;

import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public enum Pantalla {
    PRINCIPAL(By.xpath("(//main)[1]"),"Pantalla Principal"),
    SEGUIMOS_EN_CONTACTO(By.xpath("(//strong[normalize-space()='SIGAMOS EN CONTACTO'])[1]"),"Título seguimos en contacto"),
    A(By.xpath(""),"Pantalla "),

    ;
    By element;
    String description;

    Pantalla(By element, String description) {
        this.element = element;
        this.description = description;
    }

    public static Target get(String elementName) {
        Target element;
        try {
            element = Target.the(valueOf(elementName).description).located(valueOf(elementName).element);
        } catch (Exception x) {
            element = null;
        }
        return element;
    }
}
