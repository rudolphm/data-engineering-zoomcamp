QUESTION 1
```sql
CREATE OR REPLACE EXTERNAL TABLE `testapp-f6b75.nytaxi.external_yellow_tripdata`
OPTIONS (
  format = 'PARQUET',
  uris = ['gs://testapp-lakehouse-raw/hw/yellow_tripdata_2024-*.parquet']
);

CREATE OR REPLACE EXTERNAL TABLE `testapp-f6b75.nytaxi.external_yellow_tripdata`
OPTIONS (
    format = 'PARQUET',  -- Replace with your actual file format
    uris = ['gs://testapp-lakehouse-raw/hw/yellow_tripdata_2024-*.parquet'], -- Replace with your data location
    max_staleness = INTERVAL '1' DAY,  -- Adjust as needed
    metadata_cache_mode = 'AUTOMATIC'  -- Or 'MANUAL'
);

CREATE OR REPLACE TABLE `testapp-f6b75.nytaxi.external_yellow_tripdata_nonpartitioned`
AS SELECT * FROM `testapp-f6b75.nytaxi.external_yellow_tripdata`;
```

QUESTION 2
```sql
SELECT
    count(DISTINCT PULocationID)
  FROM
    `testapp-f6b75.nytaxi.external_yellow_tripdata`;

  SELECT
    count(DISTINCT PULocationID)
  FROM
    `testapp-f6b75.nytaxi.external_yellow_tripdata_nonpartitioned`;
```
  QUESTION 3
  ```sql
SELECT
    PULocationID, DOLocationID
  FROM
    `testapp-f6b75.nytaxi.external_yellow_tripdata_nonpartitioned`;
```
  
 QUESTION 4
```sql
 SELECT
     COUNT(*)
  FROM
    `testapp-f6b75.nytaxi.external_yellow_tripdata_nonpartitioned`
    WHERE fare_amount = 0; 
```

QUESTION 5
```sql
CREATE OR REPLACE TABLE `testapp-f6b75.nytaxi.external_yellow_tripdata_partitioned`
PARTITION BY DATE(tpep_dropoff_datetime)
CLUSTER BY VendorID AS (
  SELECT * FROM `testapp-f6b75.nytaxi.external_yellow_tripdata`
);
```

QUESTION 6
```sql
SELECT
    DISTINCT VendorID
  FROM
    `testapp-f6b75.nytaxi.external_yellow_tripdata_nonpartitioned`
    WHERE DATE(tpep_dropoff_datetime) BETWEEN '2024-03-01' AND '2024-03-15';
  
SELECT
  DISTINCT VendorID
FROM
  `testapp-f6b75.nytaxi.external_yellow_tripdata_partitioned`
  WHERE DATE(tpep_dropoff_datetime) BETWEEN '2024-03-01' AND '2024-03-15';
```
