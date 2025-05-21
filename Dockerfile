FROM python:3.11.12-bookworm
RUN apt update -y && apt full-upgrade -y && apt clean
RUN pip install --upgrade pip setuptools
WORKDIR /app
COPY ./my_simple_web_app.py ./app.py
RUN pip install flask
CMD [ "python","app.py" ]
