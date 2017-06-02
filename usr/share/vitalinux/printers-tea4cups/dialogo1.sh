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
    --field="Código de Impresión" "${USERCODEPRINT}" \
    --button="Imprimir:0")

if test $? -eq 0 ; then
	echo "${RESPUESTA}" | cut -d"|" -f1 | tee /tmp/nombreprint-tea4cups-${TEAUSERNAME}
	echo "${RESPUESTA}" | cut -d"|" -f2 | tee /tmp/codusuario-tea4cups-${TEAUSERNAME}
else
	exit 1
fi