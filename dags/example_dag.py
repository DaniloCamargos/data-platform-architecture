from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime, timedelta


def _hello():
    print("Hello Lakehouse!")


default_args = {
    "owner": "data-team",
    "depends_on_past": False,
    "email_on_failure": False,
    "email_on_retry": False,
    "retries": 1,
    "retry_delay": timedelta(minutes=5),
}

with DAG(
    dag_id="example_lakehouse",
    default_args=default_args,
    description="Exemplo de DAG inicial para arquitetura Lakehouse",
    schedule_interval="@daily",
    start_date=datetime(2026, 1, 1),
    catchup=False,
) as dag:

    task_hello = PythonOperator(
        task_id="hello",
        python_callable=_hello,
    )

    task_hello
