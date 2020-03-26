FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code
COPY . /code
RUN pip install -r requirements.txt


#CMD ["/code/manage.py", "runserver", "0.0.0.0:8000"]
CMD ["/code/docker_entrypoint.sh"]
