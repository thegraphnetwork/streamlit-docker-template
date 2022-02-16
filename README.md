# streamlit-docker-template
Template repository to create a dockerized Streamlit application from scratch

### Run with docker-compose :

**Pre-requisites**
* Docker installed and running
* docker-compose installed

```bash
$ docker-compose up

# When dependencies change and you need to force a rebuild
$ docker-compose up --build

# When finished
$ docker-compose down
```

### Run Natively:

**Pre-requisites**
* pip

```bash
$ pip install -r requirements.txt

$ streamlit run app.py
```

### Run with virtualenv:

**Pre-requisites**
* pip
* poetry

```bash
# first time only

$ poetry install

$ streamlit run app.py
```

### Run with docker:
* Docker installed and running

```bash
# First build
$ docker build -t streamlit-app:latest .

# Subsequent builds
$ docker build --cache-from streamlit-app:latest -t streamlit-app:latest .

# To run as docker container with default streamlit port
$ docker run -p 8501:8501 streamlit-app:latest
```

You should be able to visit the app at http://localhost:8501


