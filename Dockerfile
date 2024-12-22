FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app


# FROM python:3.9-slim
# COPY . /app
# WORKDIR /app
# RUN pip install -r requirements.txt
# CMD ["gunicorn", "app:app", "-b", "0.0.0.0:5000"]