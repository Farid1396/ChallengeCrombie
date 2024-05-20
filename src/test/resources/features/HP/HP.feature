#language: es
@Escenario:HP
Característica: Ejecución HP

  Escenario: Visualiza la pantalla principal
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible

  Escenario: Ingresa al módulo de contacto
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible
    Cuando el usuario hace click en el botón hablemos
    Entonces el usuario observa que el título seguimos en contacto es visible

  Escenario: Ingresa al módulo de contacto y visualiza los campos
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible
    Cuando el usuario hace click en el botón hablemos
    Entonces el usuario observa que el título seguimos en contacto es visible
    Y el usuario observa que el campo nombre completo es visible
    Y el usuario observa que el campo correo electrónico es visible
    Y el usuario observa que el campo país es visible
    Y el usuario observa que el campo ayuda es visible
    Y el usuario observa que el combo nosotros es visible

  Escenario: Ingresa al módulo de contacto y completa los campos
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

  Escenario: Ingresa al módulo de contacto y envía los datos sin completar los campos obligatorios
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible
    Cuando el usuario hace click en el botón hablemos
    Entonces el usuario observa que el título seguimos en contacto es visible
    Cuando el usuario hace click en el botón aceptar cookies
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
    Entonces el usuario observa que el mensaje de campos obligatorios sin completar está visible
    Cuando el usuario ingresa 'Nombre De Prueba' en el campo nombre completo
    Y el usuario ingresa 'correodeprueba@email.com' en el campo correo electrónico
    Y el usuario ingresa 'Argentina' en el campo país
    Y el usuario ingresa 'Ayuda' en el campo ayuda
    Y el usuario selecciona la primera opcion del dropdown combo nosotros
    Y el usuario hace scroll down hasta el checkbox suscribirse
    Y el usuario hace click en el botón charlemos
    Entonces el usuario observa que el mensaje gracias es visible

  Escenario: Ingresa al módulo de contacto y envía los datos inválidos
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible
    Cuando el usuario hace click en el botón hablemos
    Entonces el usuario observa que el título seguimos en contacto es visible
    Cuando el usuario ingresa 'A' en el campo nombre completo
    Y el usuario ingresa 'email@' en el campo correo electrónico
    Y el usuario ingresa 'B' en el campo país
    Y el usuario ingresa 'C' en el campo ayuda
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
    Entonces el usuario observa que el mensaje requiere más caracteres está visible
    Y el usuario observa que el mensaje email inválido está visible

  Escenario: Ingresa al módulo de contacto y envía los datos
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

  Escenario: Contacto al equipo de ventas en pantalla principal y envía los datos sin completar los campos obligatorios
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible
    Cuando el usuario hace scroll down hasta el título contactá a nuestro equipo
    Entonces el usuario observa que el título contactá a nuestro equipo es visible
    Cuando el usuario hace click en el botón aceptar cookies
    Y el usuario hace click en el checkbox aceptar las políticas de privacidad2
    #Vale aclarar que para el Captcha es difícil automatizar la validación
    #Para que el test pase, se necesita completar una vez el captcha manualmente durante
    #la ejecución del mismo, a la segunda vez que se ejecuta el test pasa exitosamente
    Y el usuario cambia al iframe 1
    Y el usuario hace click en el checkbox captcha
    Y el usuario vuelve al iframe padre
    Y el usuario hace click en el botón charlemos2
    Entonces el usuario observa que el mensaje de campos obligatorios sin completar está visible

  Escenario: Contacto al equipo de ventas en pantalla principal y envía los datos inválidos
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible
    Cuando el usuario hace scroll down hasta el título contactá a nuestro equipo
    Entonces el usuario observa que el título contactá a nuestro equipo es visible
    Cuando el usuario ingresa 'a' en el campo tu nombre
    Y el usuario ingresa 'email@' en el campo tu email
    Y el usuario hace click en el botón aceptar cookies
    Y el usuario hace click en el checkbox aceptar las políticas de privacidad2
    #Vale aclarar que para el Captcha es difícil automatizar la validación
    #Para que el test pase, se necesita completar una vez el captcha manualmente durante
    #la ejecución del mismo, a la segunda vez que se ejecuta el test pasa exitosamente
    Y el usuario cambia al iframe 1
    Y el usuario hace click en el checkbox captcha
    Y el usuario vuelve al iframe padre
    Y el usuario hace click en el botón charlemos2
    #En el campo de mail se ve un mensaje erróneo 'footer.contactSales.email must be a valid email'
    #Se debería ver un mensaje como "El valor ingresado no corresponde a un email válido"
    Entonces el usuario observa que el mensaje requiere más caracteres está visible
    Y el usuario observa que el mensaje email inválido está visible

  Escenario: Contacto al equipo de ventas en pantalla principal y envía los datos
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible
    Cuando el usuario hace scroll down hasta el título contactá a nuestro equipo
    Entonces el usuario observa que el título contactá a nuestro equipo es visible
    Cuando el usuario ingresa 'Nombre De Prueba' en el campo tu nombre
    Y el usuario ingresa 'correodeprueba@email.com' en el campo tu email
    Y el usuario hace click en el botón aceptar cookies
    Y el usuario hace click en el checkbox aceptar las políticas de privacidad2
    #Vale aclarar que para el Captcha es difícil automatizar la validación
    #Para que el test pase, se necesita completar una vez el captcha manualmente durante
    #la ejecución del mismo, a la segunda vez que se ejecuta el test pasa exitosamente
    Y el usuario cambia al iframe 1
    Y el usuario hace click en el checkbox captcha
    Y el usuario vuelve al iframe padre
    Y el usuario hace click en el botón charlemos2
    Entonces el usuario observa que el mensaje gracias es visible

  Escenario: Ingresa al módulo de contacto al equipo de ventas y envía los datos sin completar los campos obligatorios
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible
    Cuando el usuario hace click en el botón hablemos
    Entonces el usuario observa que el título seguimos en contacto es visible
    Cuando el usuario hace scroll down hasta el título contactá a nuestro equipo
    Entonces el usuario observa que el título contactá a nuestro equipo es visible
    Cuando el usuario hace click en el botón aceptar cookies
    Y el usuario hace click en el checkbox aceptar las políticas de privacidad
    #Vale aclarar que para el Captcha es difícil automatizar la validación
    #Para que el test pase, se necesita completar una vez el captcha manualmente durante
    #la ejecución del mismo, a la segunda vez que se ejecuta el test pasa exitosamente
    Y el usuario cambia al iframe 2
    Y el usuario hace click en el checkbox captcha
    Y el usuario vuelve al iframe padre
    Y el usuario hace click en el botón charlemos2

  Escenario: Ingresa al módulo de contacto al equipo de ventas y envía los datos inválidos
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible
    Cuando el usuario hace click en el botón hablemos
    Entonces el usuario observa que el título seguimos en contacto es visible
    Cuando el usuario hace scroll down hasta el título contactá a nuestro equipo
    Entonces el usuario observa que el título contactá a nuestro equipo es visible
    Cuando el usuario ingresa 'a' en el campo tu nombre
    Y el usuario ingresa 'email@' en el campo tu email
    Y el usuario hace click en el botón aceptar cookies
    Y el usuario hace click en el checkbox aceptar las políticas de privacidad2
    #Vale aclarar que para el Captcha es difícil automatizar la validación
    #Para que el test pase, se necesita completar una vez el captcha manualmente durante
    #la ejecución del mismo, a la segunda vez que se ejecuta el test pasa exitosamente
    Y el usuario cambia al iframe 2
    Y el usuario hace click en el checkbox captcha
    Y el usuario vuelve al iframe padre
    Y el usuario hace click en el botón charlemos2
    #En el campo de mail se ve un mensaje erróneo 'footer.contactSales.email must be a valid email'
    #Se debería ver un mensaje como "El valor ingresado no corresponde a un email válido"
    Entonces el usuario observa que el mensaje requiere más caracteres está visible
    Y el usuario observa que el mensaje email inválido está visible

  Escenario: Ingresa al módulo de contacto al equipo de ventas y envía los datos
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible
    Cuando el usuario hace click en el botón hablemos
    Entonces el usuario observa que el título seguimos en contacto es visible
    Cuando el usuario hace scroll down hasta el título contactá a nuestro equipo
    Entonces el usuario observa que el título contactá a nuestro equipo es visible
    Cuando el usuario ingresa 'Nombre De Prueba' en el campo tu nombre
    Y el usuario ingresa 'correodeprueba@email.com' en el campo tu email
    Y el usuario hace click en el botón aceptar cookies
    Y el usuario hace click en el checkbox aceptar las políticas de privacidad
    #Vale aclarar que para el Captcha es difícil automatizar la validación
    #Para que el test pase, se necesita completar una vez el captcha manualmente durante
    #la ejecución del mismo, a la segunda vez que se ejecuta el test pasa exitosamente
    Y el usuario cambia al iframe 2
    Y el usuario hace click en el checkbox captcha
    Y el usuario vuelve al iframe padre
    Y el usuario hace click en el botón charlemos2
    Entonces el usuario observa que el mensaje gracias es visible

  Escenario: Ingresa al módulo para sumarse al equipo
    Dado el usuario se encuentra en la página de Crombie
    Entonces el usuario observa que la pantalla principal es visible
    Cuando el usuario hace click en el botón sumate al equipo
    Y el usuario hace click en el botón aceptar cookies
    Entonces el usuario observa que el título unete al equipo es visible
    Y el usuario observa que el combo área es visible
    Cuando el usuario hace click en el combo área
    Y el usuario hace click en la opción soporte
    Y el usuario hace click en el botón siguiente
    Entonces el usuario observa que el combo puesto es visible
    Cuando el usuario hace click en el combo puesto
    Y el usuario hace click en la opción recursos humanos
    Y el usuario hace click en el botón siguiente
    Entonces el usuario observa que el campo nombre completo es visible
    Cuando el usuario ingresa 'Nombre De Prueba' en el campo nombre completo
    Y el usuario ingresa 'correodeprueba@email.com' en el campo correo electrónico
    Y el usuario ingresa '35522555896' en el campo número de teléfono
    Y el usuario ingresa 'Detalles de prueba' en el campo detalles
    Y el usuario hace scroll down hasta el campo detalles
    Y el usuario registra el archivo 'Random1 - copia.pdf' en el campo CV
    Y el usuario hace click en el checkbox aceptar las políticas de privacidad2
    Y el usuario hace click en el botón enviar