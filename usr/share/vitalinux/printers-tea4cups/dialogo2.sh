#!/bin/bash
. /etc/default/vx-dga-variables/vx-dga-variables-general.conf

TEATITLE="$(python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])" "${TEATITLE}")"
CID="$(migasfree-cid)"
FECHA="$(date +"%Y-%m-%d - %T")"
SIZE="$(expr ${TEAJOBSIZE} / 1024)"
COPIAS="$(pkpgcounter ${TEADATAFILE})"

TEXTO="\t<b>¡¡Documento Enviado!!</b>"
TEXTO="${TEXTO}\n\n\t[ ${FECHA} ] Documento: <tt><span foreground='blue'>\"${TEATITLE}\"</span></tt>"
TEXTO="${TEXTO}\n\t CID|JOBID: <tt><span foreground='blue'>\"${CID}|${TEAJOBID}\"</span></tt>"
TEXTO="${TEXTO}\n\t Impresora: <tt><span foreground='blue'>\"${TEAPRINTERNAME}\"</span></tt>"
TEXTO="${TEXTO}\n\t Usuario|Codigo: <tt><span foreground='blue'>\"${TEAUSERNAME}|${USERCODEPRINT}\"</span></tt>"
TEXTO="${TEXTO}\n\t Tamaño: <tt><span foreground='blue'>\"${SIZE}KB\"</span></tt>"
TEXTO="${TEXTO}\n\t Copias: <tt><span foreground='blue'>\"${COPIAS}\"</span></tt>"

yad --title "Impresión en Vitalinux" \
	--center \
	--text-align "left" \
	--window-icon "vitalinux" --image "impresora-multifuncion" \
    --text "${TEXTO}" \
    --button="Cerrar:0"