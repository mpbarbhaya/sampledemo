# FROM python:3.8

# ENV PYTHONUNBUFFERED 1

# RUN mkdir /app

# WORKDIR /app

# COPY requirements.txt /app/requirements.txt
# # COPY . /code/
# RUN pip install virtualenv

# RUN virtualenv venv

# RUN source venv/bin/activate

# RUN pip install -r requirements.txt

# # ADD requirements.txt /my_app_dir/

# COPY . /app

# # ADD . /my_app_dir/



FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
# RUN git clone http://192.168.2.202/BonoboGit/Backend-PUC-Application.git
RUN pip install -r requirements.txt
COPY . /code/