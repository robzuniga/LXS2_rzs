#!/bin/bash


REPORTE=reporte-`date +%Y%m%d`.log

echo "Reporte generado por $USER en $HOSTNAME:" > $REPORTE
echo " " >> $REPORTE
echo " " >> $REPORTE

echo "#######################################" >> $REPORTE
echo "# Interfaces disponibles en el servidor" >> $REPORTE
echo "#######################################" >> $REPORTE
echo " " >> $REPORTE

ifconfig >> $REPORTE


echo "####################################" >> $REPORTE
echo "# Puertos habilitados en el servidor" >> $REPORTE
echo "####################################" >> $REPORTE
echo " " >> $REPORTE

netstat -latun | grep LISTEN >> $REPORTE



echo "####################################" >> $REPORTE
echo "# Paso de variables por env" >> $REPORTE
echo "####################################" >> $REPORTE
echo " " >> $REPORTE

echo "El contenido de \$MI_VAR es: $Mi_VAR"
echo "El contenido de \$MI_VAR es: $Mi_VAR1"
echo "El contenido de \$MI_VAR es: $Mi_VAR2"
echo "El contenido de \$MI_VAR es: $Mi_VAR3"
