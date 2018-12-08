FROM python:3.6

RUN apt-get update

ADD . /workplace
WORKDIR /workplace

COPY requirements.txt requirements.txt
RUN pip install --no-cache -r requirements.txt

EXPOSE 8888
CMD ["jupyter","notebook","--no-browser","--ip=0.0.0.0","--allow-root","--NotebookApp.token='demo'"]
