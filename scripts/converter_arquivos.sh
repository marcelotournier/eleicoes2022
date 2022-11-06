#!/bin/bash

# Converte os arquivos ".zip" baixados em ".gz" para leitura em pyspark
for zipfile in $(ls bweb_*.zip)
do 
	unzip $zipfile
	rm -rf "leiame-boletimurnaweb.pdf"
	CSVFILE=$(echo $zipfile | awk '{gsub(".zip", ".csv");print}')
	echo "Comprimindo arquivo ${CSVFILE} ..."
	gzip $CSVFILE
	echo "Arquivo ${CSVFILE}.gz criado."
done

# Mover arquivos:
mkdir 'turno=1'
mkdir 'turno=2'
mkdir 'arquivos_originais'

mv bweb_1t*.gz 'turno=1'
mv bweb_2t*.gz 'turno=2'
mv bweb_*.zip 'arquivos_originais'

echo "Todos os arquivos convertidos."
