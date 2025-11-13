# BQML Projects
**I'm learning BigQuery SQL + BigQueryML + Looker so I (hopefully) can finally get a DS/ML job**

## List of Projects
---
### NYC Taxi
Simple exploratory dataset analysis practice using Python and BigQuery SQL on the `NYC_Taxi` dataset.
Familiarized myself with the BigQuery Web UI and basic processes like creating datasets, cloning datasets, and simple IAM

### Penguins
Introductory BQML project: simple regression using BigQuery ML and BigQuery SQL.
Predicting the mass of penguins based on data such as species, sex, flipper length, and geographic location.

#### Environment Variables Setup
The SQL files use environment variables to keep sensitive project information private. To use them:

1. Create a `.env` file in the project root with your BigQuery credentials:
   ```
   PROJECT_ID=your-project-id
   DATASET=your-dataset-name
   ```

2. Render SQL files before executing:
   - **Using Python**: `python render_sql.py Penguin/TrainPenguinModel.sql`
   - **Using Bash**: `./render_sql.sh Penguin/TrainPenguinModel.sql`
   
   The script will replace `${PROJECT_ID}` and `${DATASET}` placeholders with values from your `.env` file.

3. The `.env` file is automatically ignored by git to keep your credentials private.
