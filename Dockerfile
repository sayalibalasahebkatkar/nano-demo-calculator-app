FROM python:3.9

WORKDIR /home/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

HEALTHCHECK CMD curl --fail http://localhost:8080/ || exit 1

ENTRYPOINT ["python3", "server.py"]
