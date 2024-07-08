#using base image
FROM ubuntu:20.04

#setting up working directory
WORKDIR /app

#copying contents to the working directory
COPY . /app

# Set environment variables
ENV DJANGO_ENV=DEV
ENV SECRET_KEY='611911239d0bded977d9acc9626dbb408a2ac2169de32347f18598e7d2e38d75'

#Install the necessary pacakages
RUN apt-get update && \
apt-get install -y python3 python3-pip libpq-dev && \
pip3 install --upgrade pip setuptools wheel && \
pip3 install -r requirements.txt

# Run the migration command to create tables in the database
RUN python3 manage.py migrate

#setup entrypoint and cmd
ENTRYPOINT ["python3" , "manage.py"]
CMD ["runserver" , "0.0.0.0:8000"]
