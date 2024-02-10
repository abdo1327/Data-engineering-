# import the libraries

from datetime import timedelta
# The DAG object; we'll need this to instantiate a DAG
from airflow import DAG
# Operators; we need this to write tasks!
from airflow.operators.bash_operator import BashOperator
# This makes scheduling easy
from airflow.utils.dates import days_ago

#defining DAG arguments

# You can override them on a per-task basis during operator initialization
default_args = {
    'owner': 'Abdalla',
    'start_date': days_ago(0),
    'email': ['abdohasan1327@gmail.com'],
    'email_on_failure': True,
    'email_on_retry': True,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

# defining the DAG

# define the DAG
dag = DAG(
    'ETL_toll_data',
    default_args=default_args,
    description='Apache Airflow Final Assignment',
    schedule_interval=timedelta(days=1),
)

# define the task **extract_transform_and_load** to call shell script

#calling the shell script
extract_data_from_csv = BashOperator(
    task_id="extract_data_from_csv",
    bash_command="/home/project/airflow/dags/finalassignment/staging/extract_data1.sh ",
    dag=dag,
)

extract_data_from_tsv = BashOperator(
    task_id="extract_data_from_tsv",
    bash_command="/home/project/airflow/dags/finalassignment/staging/extract_data2.sh ",
    dag=dag,
)
extract_data_from_fixed_width = BashOperator(
    task_id="extract_data_from_fixed_width",
    bash_command="/home/project/airflow/dags/finalassignment/staging/extract_data3.sh ",
    dag=dag,
)

consolidate_data = BashOperator(
    task_id="consolidate_data",
    bash_command="/home/project/airflow/dags/finalassignment/staging/consolidate_data.sh ",
    dag=dag,
)

extract_transform_load = BashOperator(
    task_id="extract_transform_load",
    bash_command="/home/project/airflow/dags/finalassignment/staging/load_data.sh ",
    dag=dag,
)
# task pipeline
extract_data_from_csv >> extract_data_from_tsv
extract_data_from_csv >> extract_data_from_fixed_width
[extract_data_from_tsv, extract_data_from_fixed_width] >> consolidate_data
consolidate_data >> extract_transform_load

