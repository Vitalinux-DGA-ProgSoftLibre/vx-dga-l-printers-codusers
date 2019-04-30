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
    --field="Código de Impresión: ":H "${USERCODEPRINT}" \
--button="Imprimir:0" --button="Cancelar:1")

ESTADO=$?
echo "${ESTADO}" > /tmp/tea4cups-estado-${TEAUSERNAME}

if test ${ESTADO} -eq 0 ; then
    echo "${RESPUESTA}" | cut -d"|" -f1 | sed -e "s/ //g" > /tmp/tea4cups-nombreprint-${TEAUSERNAME}
    echo "${RESPUESTA}" | cut -d"|" -f2 | sed -e "s/ //g" > /tmp/tea4cups-codusuario-${TEAUSERNAME}
fi