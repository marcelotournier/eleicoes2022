# Eleições 2022
Scripts para análise de dados das Eleições brasileiras de 2022

# Dependências
Para baixar os dados:
- Acesso a um bash shell (Linux, Mac, Windows WSL1 ou 2)

Para a análise dos dados:
- Python 3.8 recomendado
- Java 11 instalado e `$JAVA_HOME` configurado corretamente (verifique documentação de pyspark para mais detalhes)

# Estrutura do projeto:
- `./scripts` é uma pasta contendo bash scripts para baixar e preparar os dados para análise
- `./notebooks` contém os notebooks em pyspark para consulta dos dados

# Instruções:
0. Instale os requerimentos do projeto: `pip install -r requirements.txt`
1. Rode o script `pegar_urls_resultados.sh`
2. Rode o script `baixar_arquivos.sh`
3. Rode o script `converter_arquivos.sh`
4. Copie o notebook da pasta `./notebooks` para a pasta onde os arquivos se encontram, ou modifique a pasta de leitura
5. Rode as consultas modificando o código SQL dentro da célula `spark.sql("select ...").show()`

# Exemplo:
```python3
spark.sql("select NM_MUNICIPIO, NR_ZONA, NR_SECAO, DS_CARGO_PERGUNTA, NM_VOTAVEL, QT_VOTOS, QT_COMPARECIMENTO, QT_ABSTENCOES from segundo_turno").show()
```
```
+------------+-------+--------+-----------------+---------------+--------+-----------------+-------------+
|NM_MUNICIPIO|NR_ZONA|NR_SECAO|DS_CARGO_PERGUNTA|     NM_VOTAVEL|QT_VOTOS|QT_COMPARECIMENTO|QT_ABSTENCOES|
+------------+-------+--------+-----------------+---------------+--------+-----------------+-------------+
|   SÃO PAULO|      1|       1|       Presidente|           Nulo|      12|              279|           91|
|   SÃO PAULO|      1|       1|       Presidente| JAIR BOLSONARO|     132|              279|           91|
|   SÃO PAULO|      1|       1|       Presidente|           LULA|     127|              279|           91|
|   SÃO PAULO|      1|       1|       Presidente|         Branco|       8|              279|           91|
|   SÃO PAULO|      1|       1|       Governador|           Nulo|      10|              279|           91|
|   SÃO PAULO|      1|       1|       Governador|         Branco|      10|              279|           91|
|   SÃO PAULO|      1|       1|       Governador|FERNANDO HADDAD|     124|              279|           91|
|   SÃO PAULO|      1|       1|       Governador|       TARCÍSIO|     135|              279|           91|
|   SÃO PAULO|      1|       2|       Presidente|           LULA|     158|              290|           97|
|   SÃO PAULO|      1|       2|       Presidente|           Nulo|      13|              290|           97|
|   SÃO PAULO|      1|       2|       Presidente|         Branco|       3|              290|           97|
|   SÃO PAULO|      1|       2|       Presidente| JAIR BOLSONARO|     116|              290|           97|
|   SÃO PAULO|      1|       2|       Governador|FERNANDO HADDAD|     117|              239|           92|
|   SÃO PAULO|      1|       2|       Governador|       TARCÍSIO|      99|              239|           92|
|   SÃO PAULO|      1|       2|       Governador|         Branco|       8|              239|           92|
|   SÃO PAULO|      1|       2|       Governador|           Nulo|      15|              239|           92|
|   SÃO PAULO|      1|       3|       Presidente|         Branco|       2|              298|           87|
|   SÃO PAULO|      1|       3|       Presidente| JAIR BOLSONARO|     123|              298|           87|
|   SÃO PAULO|      1|       3|       Presidente|           Nulo|       7|              298|           87|
|   SÃO PAULO|      1|       3|       Presidente|           LULA|     166|              298|           87|
+------------+-------+--------+-----------------+---------------+--------+-----------------+-------------+
only showing top 20 rows

```
