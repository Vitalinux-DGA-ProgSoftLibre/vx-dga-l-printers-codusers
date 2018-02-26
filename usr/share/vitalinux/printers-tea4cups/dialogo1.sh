#!/bin/bash

. /etc/default/vx-dga-variables/vx-dga-variables-general.conf
TEXTO="---"
RESPUESTA=$(yad --title "Gestión de Impresión en Vitalinux" \
	--center \
	--window-icon "vitalinux" --image "impresora-multifuncion" \
	--text-align "center" \
    --text "${TEXTO}" \
    --form \
    --field="Nombre de Usuario: " "${NOMBREPRINT}" \
    --field="Código de Impresión: " "${USERCODEPRINT}" \
    --button="Imprimir:0" --button="Cancelar:1")

ESTADO=$?
echo "${ESTADO}" | tee /tmp/estado-tea4cups-${TEAUSERNAME}

if test $? -eq 0 ; then
	echo "${RESPUESTA}" | cut -d"|" -f1 | sed -e "s/ //g" | tee /tmp/nombreprint-tea4cups-${TEAUSERNAME}
	echo "${RESPUESTA}" | cut -d"|" -f2 | sed -e "s/ //g" | tee /tmp/codusuario-tea4cups-${TEAUSERNAME}
else
	TEASTATUS=255
	exit 255
fi