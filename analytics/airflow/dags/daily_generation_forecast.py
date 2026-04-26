"""Daily generation forecast pipeline."""
from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG(
    dag_id="daily_generation_forecast",
    start_date=datetime(2026, 1, 1),
    schedule="@daily",
    catchup=False,
    tags=["gridforge", "analytics"],
) as dag:
    extract = BashOperator(task_id="extract", bash_command="dbt run --select staging.weather*")
    forecast = BashOperator(task_id="forecast", bash_command="python ml/run_renewable_forecast.py")
    publish = BashOperator(task_id="publish", bash_command="dbt run --select analytics.day_ahead_forecast")
    extract >> forecast >> publish
