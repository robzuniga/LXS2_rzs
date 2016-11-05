#! /bin/bash

REPORTE=reporte-`date +%Y%m%d`.log

echo "####################" >> $REPORTE
echo "Reporte generado por $USER:" > $REPORTE
echo " " >> $REPORTE
echo " " >> $REPORTE

echo "Interfaces disponibles en el servidor" >> $REPORTE
echo "" >> $REPORTE
ifconfig >> $REPORTE

netstat -latup | grep LISTEN >> $REPORTE




