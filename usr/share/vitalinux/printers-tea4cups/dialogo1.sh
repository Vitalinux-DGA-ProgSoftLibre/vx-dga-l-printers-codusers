#!/bin/bash
TEXTO="---"
yad --title "Gestión de Impresión en Vitalinux" \
	--center \
	--window-icon "vitalinux" --image "impresora-multifuncion" \
	--text-align "center" \
    --text "${TEXTO}" \
    --form --field="Código de Impresión" "${USERCODEPRINT}" \
    --button="Imprimir:0" \
    | cut -d"|" -f1 | tee /tmp/codusuario-tea4cups-${TEAUSERNAME}