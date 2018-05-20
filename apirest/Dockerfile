FROM python:rc-alpine

RUN mkdir /app
WORKDIR /app

RUN pip install eve

ADD src/ /app/

ENTRYPOINT ["python","/app/run.py"]