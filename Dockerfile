FROM python:3

RUN apt-get update -y && apt-get install cmake -y
EXPOSE 8000
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt

CMD ["python", "taskmanager/manage.py", "runserver", "0.0.0.0:8000"]
