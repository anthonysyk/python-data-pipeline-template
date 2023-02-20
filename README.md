# python-data-pipeline-template
A template for building a data pipeline in Python, showcasing best practices.

## Usage

Setup local environment with docker-compose

```make compose-up```

Tear down local environment with docker-compose

```make compose-down```

You can run the pipeline using Airflow UI

## Purpose

- Fetch data from several sources
- Create a full view of a movie with data from different sources
- Create a profile for each user depending on their movie ratings
- Run the pipeline with an orchestration tool

### Data

Movies data is used for this template (https://grouplens.org/datasets/movielens/latest/) 

### Dependencies

Use requirements.txt to set the dependencies versions

```
make deps
```

Set dependencies in requirements.txt

```
make save-deps
```

### ETL pipeline

- Fetch data from imdb and themoviedb sources
- Keep track of the last update
- Update if not updated since 15 days
- Store result in output folder

### Orchestration

Airflow is used to orchestrate the pipeline
1) Fetch and Save data from all sources
2) When all sources have been fetched aggregate data
3) Run a Spark job to aggregate all sources data into a single row
4) Run a Spark job to create a user profile and a list of recommended movies based on preferences

### Exploration 

Notebooks are used to explore data and answer questions

### Data Processing

Spark is used to process and aggregate data into an easy to query dataset

## Inspiration

Project Structure: https://towardsdatascience.com/the-good-way-to-structure-a-python-project-d914f27dfcc9#da77

Virtual Environment: https://medium.com/@jtpaasch/the-right-way-to-use-virtual-environments-1bc255a0cba7

## Librairies

- Commands: click
- Dependencies: venv + pip + requirements.txt

## Possible improvements:

- Use poetry
- 