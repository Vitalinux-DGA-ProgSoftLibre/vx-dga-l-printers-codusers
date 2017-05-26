# Paquete DEB vx-dga-l-printers-codusers

Paquete encargado de configurar las impresoras/fotocopiadoras del equipo Vitalinux a través de __tea4cups__ para que se le solicite al usuario un __código de usuario__.  En concreto, al darle a imprimir en Vitalinux emergerá una ventana que solicitará al usuario un código que será enviado a la fotocopiadoras, y si este código es válido, la impresora imprimirá el trabajo y cargará las copias al código de usuario que se indicó.

Lógicamente, para que tenga sentido este paquete la fotocopiadora debe estar previamente configurada para dar este servicio de impresión bajo códigos de usuario, y tener configurada la impresora (el PPD) para este envío.

# Usuarios Destinatarios

Centros Educativos donde quieran establecer una contabilidad de las copias de impresión.

# Aspectos Interesantes:

El paquete también audita las copias enviadas:

1) En el equipo local: en /var/log/printaccountig.log se audita las copias enviadas desde ese equipo
2) En el servidor Caché: En el caso de contar con un servidor caché, de manera centralizada se auditarán las copias en /media/profesores/printaccounting

# Como Crear o Descargar el paquete DEB a partir del codigo de GitHub
Para crear el paquete DEB será necesario encontrarse dentro del directorio donde localizan los directorios que componen el paquete.  Una vez allí, se ejecutará el siguiente comando (es necesario tener instalados los paquetes apt-get install debhelper devscripts):

```
apt-get install debhelper devscripts
/usr/bin/debuild --no-tgz-check -us -uc
```

En caso de no querer crear el paquete para tu distribución, puedes hacer uso del que está disponible para Vitalinux (*Lubuntu 14.04*) desde el siguiente repositorio:

[Respositorio de paquetes DEB de Vitalinux](http://migasfree.educa.aragon.es/repo/Lubuntu-14.04/STORES/base/)

# Como Instalar el paquete vx-dga-l-*.deb:

Para la instalación de paquetes que estan en el equipo local puede hacerse uso de ***dpkg*** o de ***gdebi***, siendo este último el más aconsejado para que se instalen de manera automática también las dependencias correspondientes.
```
gdebi vx-dga-l-*.deb
```
