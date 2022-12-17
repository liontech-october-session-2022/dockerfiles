FROM      python:3.10-slim-buster
WORKDIR   /usr/src/facebookapp 
ENV       PYTHONSAMPLEAPPLICATION 1
ENV       PYTHONSAMPLEAPPLICATION 1
RUN       pip install --upgrade pip 
COPY      ./requirements.txt .
RUN        pip install -r requirements.txt 
COPY     . .
CMD       uvicorn main:app    --reload  --host 0.0.0.0    --port 8080
