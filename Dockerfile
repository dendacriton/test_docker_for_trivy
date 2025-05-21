FROM python:3.11-slim
RUN apt update -y && apt upgrade -y && apt clean
WORKDIR /app
COPY ./my_simple_web_app.py ./app.py
RUN pip install flask
CMD [ "python","app.py" ]
