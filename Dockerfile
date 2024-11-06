FROM python:3.12.2-alpine

WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./src /code/src

# TODO: can add gunicorn worker
#       or change port something
# ENTRYPOINT ["uvicorn", "src.main:app", "--port", "80"]