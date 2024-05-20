package qa.front.screenplay.global.elements;

import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public enum Campo {
    NOMBRE_COMPLETO(By.xpath("(//input[@placeholder='Ingresa tu nombre completo'])[1]|(//input[contains(@placeholder,'Escribe tu nombre')])[1]"),"Campo nombre completo"),
    CORREO_ELECTRONICO(By.xpath("(//input[@placeholder='Ingresa tu correo electrónico'])[1]|(//input[contains(@placeholder,'Escribe tu email')])[1]"),"Campo correo electrónico"),
    PAIS(By.xpath("(//input[@placeholder='Ingresa tu país'])[1]"),"Campo país"),
    AYUDA(By.xpath("(//input[@placeholder='Ingresa cómo podemos ayudarte'])[1]"),"Campo ayuda"),
    TU_NOMBRE(By.xpath("(//input[@placeholder='Tu nombre'])[1]"),"Campo tu nombre"),
    TU_EMAIL(By.xpath("(//input[@placeholder='tu@email.com'])[1]"),"Campo tu email"),
    NUMERO_DE_TELEFONO(By.xpath("(//input[contains(@placeholder,'Escribe tu número de teléfono')])[1]"),"Campo número de teléfono"),
    DETALLES(By.xpath("(//textarea[@placeholder='Escribe aquí...'])[1]"),"Campo detalles"),
    CV(By.xpath("(//input[@id='cvFile'])[1]"),"Campo CV"),
    A(By.xpath(""),"Campo "),


    ;
    By element;
    String description;

    Campo(By element, String description) {
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
