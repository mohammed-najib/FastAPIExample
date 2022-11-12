FROM python:3.10-slim

COPY ./src /app/src
# COPY ./requirements.txt /app

WORKDIR /app

# RUN pip3 install -r requirements.txt
# RUN pip install fastapi[all]
RUN pip install fastapi

EXPOSE 8000

CMD [ "uvicorn", "src.books:app", "--host=0.0.0.0", "--reload" ]