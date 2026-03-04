## analyses

- A place for SQL files that you want to keep private.
- Generally use for data quality reports.
- not commonly used.

## dbt_project.yml

- The most important file in dbt
- need it to run dbt commands

## macros

- They behave like Python functions (reusable logic)
- They help you encapsulate logic 
- they can be tested

## seeds

- upload csv and flat files to add them to dbt layer

## snapshots
- Take a picture of a table at a moment in time.
- Useful to track the history of a column that overwrites itself.

## tests 
- A place to put assertions in SQL format
- A place for singular tests
- If this SQL command returns more than 0 rows, dbt build fails

## models
- dbt suggests 3 subfolders:
### staging
 - Sources (raw table from database)
 - Staging files that are 1 to 1 copy of your data with minimal cleaning state
    - Data types
    - Remaining columns
### intermediate
- private data, not raw data 
- nice for heavy duty cleaning or complex logic 
### marts
- Data ready for consumption
- Tables ready fpr dashboard
- Properly modeled, clean tables 