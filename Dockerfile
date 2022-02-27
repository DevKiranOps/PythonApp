FROM ubuntu:latest
RUN apt-get update  &&  \
    apt-get install -y python3 python3-pip
COPY FlaskApp /FlaskApp
RUN cd /FlaskApp && pip3 install -r requirements.txt
ENTRYPOINT ["python3", "/FlaskApp/main.py"]



