package qa.front.screenplay.global.elements;

import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public enum Opcion {
    SOPORTE(By.xpath("(//li[@role])[1]"),"Opción soporte"),
    RECURSOS_HUMANOS(By.xpath("(//li[@role])[1]"),"Opción recursos humanos"),
    A(By.xpath(""),"Opción "),

    ;
    By element;
    String description;

    Opcion(By element, String description) {
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
