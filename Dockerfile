FROM python:3.11-slim

WORKDIR /app
COPY ./my_simple_web_app.py ./app.py
RUN pip install flask
CMD [ "python","app.py" ]
