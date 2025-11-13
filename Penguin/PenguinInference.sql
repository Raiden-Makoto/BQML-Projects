SELECT * FROM ML.EXPLAIN_PREDICT(MODEL `${PROJECT_ID}.${DATASET}.penguins_model`, (
  SELECT * FROM `bigquery-public-data.ml_datasets.penguins`
  WHERE island = 'Biscoe'),
  STRUCT(3 as top_k_features)
);