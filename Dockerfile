FROM python:latest

WORKDIR /myapp

RUN mkdir myapp && adduser --disabled-login --gecos '' sampleuser && chown -R sampleuser /myapp 

USER sampleuser
COPY main.py /myapp/

CMD [ "python", "main.py" ]

