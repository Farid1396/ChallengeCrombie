#language: es
@Escenario:E2E
Característica: Ejecución E2E

  Escenario: Módulo de contacto y envía los datos
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible
    Cuando el usuario hace click en el botón hablemos
    Entonces el usuario observa que el título seguimos en contacto es visible
    Cuando el usuario ingresa 'Nombre De Prueba' en el campo nombre completo
    Y el usuario ingresa 'correodeprueba@email.com' en el campo correo electrónico
    Y el usuario ingresa 'Argentina' en el campo país
    Y el usuario ingresa 'Ayuda' en el campo ayuda
    Y el usuario selecciona la primera opcion del dropdown combo nosotros
    Y el usuario hace click en el botón aceptar cookies
    Y el usuario hace click en el checkbox aceptar políticas y privacidad
    Y el usuario hace click en el checkbox suscribirse
    Y el usuario hace scroll down hasta el checkbox suscribirse
    #Vale aclarar que para el Captcha es difícil automatizar la validación
    #Para que el test pase, se necesita completar una vez el captcha manualmente durante
    #la ejecución del mismo, a la segunda vez que se ejecuta el test pasa exitosamente
    Y el usuario cambia al iframe 1
    Y el usuario hace click en el checkbox captcha
    Y el usuario vuelve al iframe padre
    Y el usuario hace click en el botón charlemos
    Entonces el usuario observa que el mensaje gracias es visible

    Cuando el usuario hace scroll down hasta el título contactá a nuestro equipo
    Entonces el usuario observa que el título contactá a nuestro equipo es visible
    Cuando el usuario ingresa 'Nombre De Prueba' en el campo tu nombre
    Y el usuario ingresa 'correodeprueba@email.com' en el campo tu email
    Y el usuario hace click en el checkbox aceptar las políticas de privacidad
    #Vale aclarar que para el Captcha es difícil automatizar la validación
    #Para que el test pase, se necesita completar una vez el captcha manualmente durante
    #la ejecución del mismo, a la segunda vez que se ejecuta el test pasa exitosamente
    Y el usuario cambia al iframe 1
    Y el usuario hace click en el checkbox captcha
    Y el usuario vuelve al iframe padre
    Y el usuario hace click en el botón charlemos2
    Entonces el usuario observa que el mensaje gracias es visible

