package qa.front.screenplay.global.elements;

import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public enum Boton {
    HABLEMOS(By.xpath("(//p[contains(@class,'text-white group-hover:text-black font-gilroy leading-normal')])[1]"),"Botón Hablemos"),
    CHARLEMOS(By.xpath("//button[normalize-space()='Charlemos']"),"Botón charlemos"),
    ACEPTAR_COOKIES(By.xpath("//button[text()='Aceptar']"),"Botón aceptar cookies"),
    CHARLEMOS2(By.xpath("(//input[@value='Charlemos'])[1]"),"Botón charlemos2"),
    SUMATE_AL_EQUIPO(By.xpath("//span[normalize-space()='Sumate al Equipo']"),"Botón sumate al equipo"),
    SIGUIENTE(By.xpath("(//p[normalize-space()='Siguiente'])[1]"),"Botón siguiente"),
    ENVIAR(By.xpath("(//p[contains(text(),'Enviar')])[1]"),"Botón enviar"),
    HOME(By.xpath("(//*[name()='svg'])[1]"),"Botón home"),
    A(By.xpath(""),"Botón "),

    ;
    By element;
    String description;

    Boton(By element, String description) {
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
