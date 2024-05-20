package qa.front.screenplay.global.elements;

import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public enum Mensaje {

    DE_CAMPOS_OBLIGATORIOS_SIN_COMPLETAR(By.xpath("(//p[text()='Lo siento, este campo es obligatorio'])[1]"),"Mensaje de campos obligatorios sin completar"),
    GRACIAS(By.xpath("(//p[text()='Gracias!'])[1]|(//h2[normalize-space()='¡Gracias!'])[1]"),"Mensaje gracias"),
    REQUIERE_MAS_CARACTERES(By.xpath("//p[contains(text(),'Lo siento, este campo requiere al menos 2 caracter')]"),"Mensaje requiere más caracteres"),
    EMAIL_INVALIDO(By.xpath("//p[normalize-space()='footer.contactSales.email must be a valid email']|//p[normalize-space()='Lo siento, este campo debe ser un email valido']"),"Mensaje email inválido"),
    A(By.xpath(""),"Mensaje "),

    ;
    By element;
    String description;

    Mensaje(By element, String description) {
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
