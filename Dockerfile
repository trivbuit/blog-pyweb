FROM python:3

ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt /code/

RUN pip3 install -r requirements.txt

COPY . /code

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:80"]