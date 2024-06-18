FROM ubuntu:20.04
WORKDIR /app
copy . /app
RUN apt-get update  &&  \
apt-get install -y python3 python3-pip && \
pip install -r requirements.txt
ENTRYPOINT ["python3", "manage.py"]
CMD  ["runserver" , "0.0.0.0:8000"]