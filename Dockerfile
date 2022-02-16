FROM python:3.9-slim

RUN pip install -U pip poetry streamlit

WORKDIR /app

# Copy data, app and dependencies
COPY ./app.py ./app.py
COPY ./pyproject.toml ./pyproject.toml

# Install dependencies
RUN poetry install
RUN poetry shell

ENTRYPOINT [ "streamlit", "run", "app.py" ] 


