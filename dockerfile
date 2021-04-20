FROM python:3.9.4-slim-buster

MAINTAINER Michael Condon <mcondo8@wgu.edu>

COPY ./requirements.txt /requirements.txt

WORKDIR /

# Set up dependencies
RUN apt-get update
RUN pip install -r requirements.txt

COPY /app /app

ENTRYPOINT ["python"]
CMD ["app/app.py"]
