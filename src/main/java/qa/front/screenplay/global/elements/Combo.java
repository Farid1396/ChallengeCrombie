package qa.front.screenplay.global.elements;

import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public enum Combo {
    NOSOTROS(By.xpath("(//select[@name='hearAboutUs'])[1]"),"Combo Nosotros"),
    AREA(By.xpath("(//button[@data-slot])[1]"),"Combo área"),
    PUESTO(By.xpath("(//button[@data-slot])[1]"),"Combo puesto"),
    A(By.xpath(""),"Combo "),

    ;
    By element;
    String description;

    Combo(By element, String description) {
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
