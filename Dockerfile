FROM continuumio/anaconda3:2019.03

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DOCKER true
RUN mkdir -p /var/lib/qcore
WORKDIR /var/lib/qcore
RUN apt-get update
RUN apt-get install --reinstall procps -y
RUN jupyter notebook --generate-config
ADD ./jupyter_notebook_config.py .
RUN cp jupyter_notebook_config.py ~/.jupyter/
ADD ./requirements.txt .
ADD ./qore_sdk-0.1.0-cp37-cp37m-linux_x86_64.whl .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install scipy
RUN pip install xgboost
RUN pip install qore_sdk-0.1.0-cp37-cp37m-linux_x86_64.whl

COPY . /var/lib/qcore
