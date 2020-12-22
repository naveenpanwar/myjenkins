FROM python:3.6

ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

ADD . /data/
RUN chown -R www-data:www-data /data
WORKDIR /data
