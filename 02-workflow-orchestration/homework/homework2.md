### Question 3
```sql
SELECT COUNT(*) FROM `testapp-f6b75`.`zoomcamp`.`yellow_tripdata` WHERE EXTRACT(YEAR FROM tpep_pickup_datetime) = 2020;
```

### Question 4 
```sql
SELECT COUNT(*) FROM `testapp-f6b75`.`zoomcamp`.`green_tripdata` WHERE EXTRACT(YEAR FROM lpep_pickup_datetime) = 2020;
```

### Question 5
```sql
SELECT COUNT(*) FROM `testapp-f6b75`.`zoomcamp`.`yellow_tripdata` WHERE EXTRACT(YEAR FROM tpep_pickup_datetime) = 2021 AND EXTRACT(MONTH FROM tpep_pickup_datetime) = 3;
```