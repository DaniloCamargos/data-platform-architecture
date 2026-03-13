# Arquitetura Lakehouse

Esta documentação descreve o padrão Lakehouse adotado, inspirado no fluxo Bronze -> Silver -> Gold.

## Camadas

- **Ingestão (Bronze)**: Recebe dados brutos (batch/stream) e armazena no Data Lake (Cloud Storage).
- **Processamento (Silver)**: Limpeza, enriquecimento e organização usando tabelas Iceberg/BigQuery.
- **Consumo (Gold)**: Consumidores finais, dashboards (Power BI / Looker) e ML.

## Componentes principais

- **Orquestração**: Apache Airflow / Cloud Composer
- **Storage**: Google Cloud Storage
- **Data Warehouse**: BigQuery
- **Infraestrutura**: Terraform + Cloud Build / GitHub Actions
