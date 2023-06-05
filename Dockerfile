FROM python:3.11-buster

RUN apt-get update -y && apt-get install -y cmake build-essential

RUN python -m ensurepip --upgrade

WORKDIR /app
COPY requirements.txt /app/

# for some reason, pyarrow requires numpy but doesn't say so in its build dependencies
# RUN pip3 install "numpy>=1.16.6"
RUN pip3 install -r requirements.txt


COPY run.sh *.py *.ipynb book.proto /app/
CMD ["python", "benchmarks.py"]
