FROM python:latest
RUN pip install --upgrade pip
RUN apt-get update && apt-get install -y nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g node-sass
RUN pip install ecdsa pycrypto paramiko lxml six Pillow redis greenlet gevent psycopg2
RUN apt-get autoremove -y
RUN apt-get clean
