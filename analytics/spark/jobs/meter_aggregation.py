"""Aggregate AMI meter reads from Kafka -> ClickHouse."""
from pyspark.sql import SparkSession
from pyspark.sql.functions import col, window

spark = SparkSession.builder.appName("meter-aggregation").getOrCreate()
df = (
    spark.readStream.format("kafka")
    .option("kafka.bootstrap.servers", "kafka.messaging:9092")
    .option("subscribe", "ami.meter.read.captured")
    .load()
)
agg = (
    df.selectExpr("CAST(value AS STRING) AS json")
    .selectExpr("json_tuple(json,'meter_id','kwh','read_time') AS (meter_id,kwh,read_time)")
    .groupBy(window(col("read_time"), "1 hour"), "meter_id")
    .sum("kwh")
)
(agg.writeStream.format("clickhouse").outputMode("complete")
    .option("table", "gridforge_analytics.energy_consumption_hourly")
    .start().awaitTermination())
