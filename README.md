# Sobre PlacetoPay

[PlacetoPay](http://www.placetopay.com) es la plataforma pionera en Colombia y procesa operaciones directamente a las cuentas de nuestros clientes.

# Descripción del reto

Desarrollar un plugin funcional de Magento que permita realizar un pedido, modificar el estado de este y pagar, a través de PlacetoPay.

Puedes ver un ejemplo del flujo del plugin para Magento 1.9 en el siguiente enlace:

https://www.youtube.com/watch?v=zlmHH1j3fPk

# Requisitos generales

## Imagen Corporativa
* Se debe agregar el logo de PlacetoPay ​en el selector del medio de pago.
* Se sugiere agregar los logotipos de las franquicias disponibles para hacer pagos.
* No se debe mencionar los términos ​**pagos en línea​** ni ​**pagos online​**.

## Validación de campos
El desarrollador debe incluir los siguientes campos en el sitio, para ser enviados a PlacetoPay.

**Datos del comprador**
* Nombre completo.
* Correo electrónico.

**Datos de la compra**
* Valor.
* IVA.
* Referencia.
* Descripción.
* Dirección IP.
* Fecha de expiración.
* Agente de Usuario (UserAgent) del navegador

> Tener en cuenta que cada uno de los campos debe estar compuesto con información
coherente según el tipo de campo, adicionalmente se debe enviar la información
codificada según el idioma.

# Requisitos técnicos
 * PHP: ~7.1.3 o ~7.2.0
    * ext-bcmath
    * ext-ctype
    * ext-curl
    * ext-gd
    * ext-hash
    * ext-iconv
    * ext-intl
    * ext-mbstring
    * ext-openssl
    * ext-pdo_mysql
    * ext-xml
    * ext-soap
    * ext-spl
    * ext-xsl
    * ext-zip
    * lib-libxml
 * Manejador de paquetes Composer: Última versión estable
 * Base de datos (MySQL o MariaDB)
    * MySQL: 5.7
    * MariaDB: 10.*
 * Servidores web (Apache o Nginx)
    * Apache: 2.2 o 2.4 con mod_rewrite y mod_versions
    * Nginx: 1.*

# Tarjetas de prueba para realizar transacciones

A continuación encontrarán las tarjetas con las cuales podrán probar el proceso de
compra:

| FRANQUICIA | NÚMERO DE TARJETA | TIPO DE RESPUESTA |
|------------------|-------------------|-------------------|
| VISA | 4007000000027 | APROBADA |
| VISA | 4111111111111111 | APROBADA |
| VISA | 4212121212121214 | PENDIENTE |
| VISA | 4005580000000040 | RECHAZADA |
| MASTERCARD | 5424000000000015 | APROBADA |
| AMERICAN EXPRESS | 370000000000002 | APROBADA |
| DINERS | 36018623456787 | APROBADA |
| CREDENCIAL | 5406251000000008 | APROBADA |

Al hacer pruebas con una tarjeta de crédito cuyo tipo de respuesta es ​ **APROBADA**​, significa que la transacción elaborada va ser un pago efectuado correctamente; si el tipo de respuesta es ​**PENDIENTE** significa que la transacción tendrá un estado procesamiento permanente por parte del banco o la red financiera y si el tipo de respuesta es ​ **RECHAZADA**​ simula que no hay cupo en la tarjeta.

**Para todas las franquicias**
 * Código de verificación (CVV) es: 123
 * Fecha de vencimiento: Seleccione una fecha vigente

# Credenciales de acceso

* **Login**: 6dd490faf9cb87a9862245da41170ff2
* **Trankey**: 024h1IlD

# Recursos
* Documentación para desarrolladores de PlacetoPay: https://dev.placetopay.com/web/redirection/
* Documentación para desarrolladores de Magento: https://devdocs.magento.com
* Repositorio de logos de PlacetoPay: https://dev.placetopay.com/web/logos/
* PHP Standards Recommendations: https://www.php-fig.org/psr/
* Documentación de GIT: https://git-scm.com/docs
* URL para el consumo de los servicios en pruebas: https://test.placetopay.com/redirection
* Cliente para el consumo de los servicios: https://dnetix.co/p2p/client
* Libreria para autenticación y pago básico con PLaceToPay: https://github.com/dnetix/redirection
