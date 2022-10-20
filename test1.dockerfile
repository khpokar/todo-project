# FROM ubuntu
# RUN apt-get update && apt-get upgrade -y
# RUN apt-get install git -y && apt-get install python3 -y
# RUN apt-get install python3-pip -y
# RUN pip3 install django -y

FROM python:3
RUN pip install django==3.2
COPY . .
RUN python3 manage.py migrate
CMD ["python3","manage.py","runserver","0.0.0.0:8001"]
