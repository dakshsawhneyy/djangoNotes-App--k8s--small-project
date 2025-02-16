FROM python:3.9

WORKDIR /app/backend

# copying requirement first because it doesnt reinstall dependencies which are already present
COPY requirements.txt /app/backend
RUN pip install -r requirements.txt

COPY . /app/backend

EXPOSE 8000

# Exposing django to port 8000
CMD python /app/backend/manage.py runserver 0.0.0.0:8000
