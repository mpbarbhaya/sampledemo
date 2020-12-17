FROM python:3.8
ENV PYTHONUNBUFFERED 1
#install git
RUN apt-get update
RUN apt-get install -y git
RUN mkdir /sampleTest
RUN cd sampleTest
RUN git clone https://github.com/mpbarbhaya/djtestgit.git
# set working directory
WORKDIR /sampleTest/djtestgit
#exampleasasd
# RUN mkdir /code
# WORKDIR /code
# RUN pip install --upgrade pip
COPY requirements.txt /sampleTest/djtestgit

RUN pip install -r requirements.txt
COPY . /sampleTest/djtestgit

# EXPOSE 8000

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
