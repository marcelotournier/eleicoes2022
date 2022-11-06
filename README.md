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

TODOs: 
- Notebooks para análise (trabalho em progresso)
