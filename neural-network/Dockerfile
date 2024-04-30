FROM python:3.11.9

WORKDIR /app

RUN pip install flask==3.0.3 tensorflow

EXPOSE 5000

COPY . .

RUN mkdir /app/static/images

RUN mkdir /app/static/images/predict

CMD ["python", "app.py"]