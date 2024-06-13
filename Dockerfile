FROM python:3.9.2 As dev

WORKDIR /app1

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0" ,"--port=5000"]

FROM python:3.9.2 AS prod

WORKDIR /app2

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0" ,"--port=8000"]
