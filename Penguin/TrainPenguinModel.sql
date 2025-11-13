SELECT * FROM ML.EVALUATE(MODEL `${PROJECT_ID}.${DATASET}.penguins_model`, (
  SELECT * FROM `bigquery-public-data.ml_datasets.penguins`
  WHERE body_mass_g IS NOT NULL
));