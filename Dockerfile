# We Use an official Python runtime as a parent image
FROM python:3.10.4-bullseye
# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1
# create root directory for our project in the container
RUN mkdir /usr/src/django/
RUN mkdir /usr/src/django/backend
# Set the working directory to /backend
WORKDIR /usr/src/django/backend
# Copy the current directory contents into the container at /backend
ADD . /usr/src/django/backend

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt