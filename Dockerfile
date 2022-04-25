FROM python:3.8

ENV PORT 8080
ENV HOSTDIR 0.0.0.0

EXPOSE 8080

RUN apt-get update -y && \
    apt-get install -y python3-pip

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt
# RUN pip install pystan
# RUN pip install prophet
# RUN pip install statsmodels

COPY . /app


ENTRYPOINT ["python", "app.py"]
