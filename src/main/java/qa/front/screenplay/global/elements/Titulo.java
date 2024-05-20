package qa.front.screenplay.global.elements;

import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public enum Titulo {
    SEGUIMOS_EN_CONTACTO(By.xpath("(//strong[normalize-space()='SIGAMOS EN CONTACTO'])[1]"),"Título seguimos en contacto"),
    CONTACTA_A_NUESTRO_EQUIPO(By.xpath("(//h3[normalize-space()='Contactá a nuestro equipo de ventas'])[1]"),"Título contactá a nuestro equipo"),
    UNETE_AL_EQUIPO(By.xpath("//p[normalize-space()='ÚNETE AL EQUIPO']"),"Título unete al equipo"),
    A(By.xpath(""),"Título "),

    ;
    By element;
    String description;

    Titulo(By element, String description) {
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
