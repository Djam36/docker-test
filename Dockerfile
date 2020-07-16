FROM python:3.6-alpine

COPY . /app
WORKDIR /app
RUN pip install Flask

ENV FLASK_APP app.py

EXPOSE 5000
ENTRYPOINT ["python"]
CMD [ "app.py"]
