package qa.front.screenplay.global.elements;

import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public enum Checkbox {
    ACEPTAR_POLITICAS_Y_PRIVACIDAD(By.xpath("(//input[@type='checkbox'])[1]"),"Checkbox aceptar políticas y privacidad"),
    SUSCRIBIRSE(By.xpath("(//input[@name='acceptNewsletter'])[1]"),"Checkbox suscribirse"),
    CAPTCHA(By.xpath("//div[@class='recaptcha-checkbox-border']"),"Checkbox captcha"),
    ACEPTAR_LAS_POLITICAS_DE_PRIVACIDAD(By.xpath("(//input[@type='checkbox'])[last()]"),"Checkbox aceptar las políticas de privacidad"),
    ACEPTAR_LAS_POLITICAS_DE_PRIVACIDAD2(By.xpath("(//input[@type='checkbox'])[1]"),"Checkbox aceptar las políticas de privacidad2"),
    A(By.xpath(""),"Checkbox "),

    ;
    By element;
    String description;

    Checkbox(By element, String description) {
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
