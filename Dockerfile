FROM python:3.11-buster

WORKDIR /app
COPY requirements.txt /app
RUN python -m ensurepip --upgrade
RUN pip3 install -r requirements.txt

CMD ["/app/run.sh"]
