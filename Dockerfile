FROM python:2

RUN apt-get update && apt-get install git

WORKDIR /app

RUN git clone https://github.com/epinna/tplmap.git
RUN pip install -r /app/tplmap/requirements.txt

ENTRYPOINT ["python", "/app/tplmap/tplmap.py"]
