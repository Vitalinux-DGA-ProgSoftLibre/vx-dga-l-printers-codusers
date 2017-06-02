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

# Parámetros a poder personalizar de las Fotocopiadoras:

## Ricoh

### Ricoh PCLXL (p.e MP 7000 del IES Pedro de Luna)

@PJL SET COPIES=1
@PJL SET ECONOMODE=OFF
@PJL SET DUPLEX=OFF
@PJL SET MEDIATYPE=PLAINORRECYCLED
@PJL SET OUTBIN=SYSDEFAULT
@PJL SET STAPLE=OFF
@PJL SET PUNCH=OFF
@PJL SET FOLD=OFF
@PJL SET USERCODE="----"
@PJL SET JOBPASSWORD2="----"
@PJL SET USERID="dga"
@PJL SET HOSTLOGINNAME="dga"
@PJL SET DATE="2017/06/02"
@PJL SET TIME="10:43:28"
@PJL SET JOBID="Ricoh-Aficio-MP-7000 - CUPS 1.7.2"
@PJL SET JOBNAME="Ricoh-Aficio-MP-7000 - CUPS 1.7.2"
@PJL SECUREJOB
@PJL SET RENDERMODE=GRAYSCALE
@PJL SET RESOLUTION=600
@PJL ENTER LANGUAGE = PCLXL

### Ricoh PXL

# Parametros Ricoh (PXL):
@PJL JOB
@PJL SET AUTOTRAYCHANGE=ON
@PJL SET ECONOMODE=OFF
@PJL SET DUPLEX=ON
@PJL SET BINDING=LONGEDGE
@PJL SET MEDIATYPE=PLAIN
@PJL SET OUTBIN=SYSDEFAULT
@PJL SET STAPLE=OFF
@PJL SET USERCODE="----"
@PJL SET COPIES=1
@PJL SET RENDERMODE=GRAYSCALE
@PJL SET RESOLUTION=600
@PJL ENTER LANGUAGE = PCLXL

### Ricoh PS (PS - PostScript)

/lppswd()def
/usrcode(191)def
mark
/usrcode where{pop}{/usrcode()def}ifelse
(profesor) usrcode (201705181203) {setuserinfo} stopped
cleartomark
mark {
<<
   /JobType 0
   /JobInfo <<
      /UserID (profesor)
      /Time (201705181203)
      /HostLoginName (profesor)
      /HostName (vitalinux)
   >>
>> /RDeviceProcSet /ProcSet findresource /SetJobType get exec
}stopped cleartomark
mark{
userdict /RPS_BPdict 2 dict put
userdict /RPS_BPdict get begin /RPS_BP_MEDIAPOSITION null def end
} stopped cleartomark
mark{
userdict /RPS_BPdict get begin
/RPS_BP_MEDIATYPE (Auto) def end
} stopped cleartomark
mark{
<<
/BannerPageMode false
/MediaPosition null
/MediaType null
>>
/RDeviceProcSet
/ProcSet findresource
/SetBannerPage get exec
} stopped cleartomark
%%%!PS-Adobe-3.0
%%HiResBoundingBox: 0 0 595.00 842.00
%%Creator: GPL Ghostscript 910 (ps2write)
%%LanguageLevel: 2
%%CreationDate: D:20170518120356+02'00'
%%For: (profesor)
%%Title: (prueba)
%%Requirements: duplex
%RBINumCopies: 1
%%Pages: (atend)
%%BoundingBox: (atend)
%%EndComments
%%BeginProlog

### Konica

@PJL COMMENT
@PJL SET USERNAME="profesor"
@PJL SET JOBNAME="konica-bizhub-654e - CUPS 1.7.2"
@PJL SET DRIVERJOBID="85"
@PJL SET QTY=1
@PJL SET KMCOETYPE=0
@PJL SET KMSECTIONNAME = ""
@PJL SET KMSECTIONKEY2 = "100"
@PJL SET JIMONMODE = OFF
@PJL SET DTSTPMODE = OFF
@PJL SET PAGESTAMP = "NONE,1,1"
@PJL ENTER LANGUAGE = POSTSCRIPT