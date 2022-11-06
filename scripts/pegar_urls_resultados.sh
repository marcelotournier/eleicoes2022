#!/bin/bash
# Pegar todas as URLs dos resultados eleitorais:
curl https://dadosabertos.tse.jus.br/dataset/resultados-2022-boletim-de-urna \
   -H 'User-Agent: Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/603.1.23 (KHTML, like Gecko) Version/10.0 Mobile/14E5239e Safari/602.1' \
   -H "Content-Type: application/json" \
   | grep ".zip" | grep -v ".sha512" | cut -f2 -d"\"" \
   > "fontes_zip.txt"
