FROM python:3.9
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000
ENV PORT 8000
CMD ["gunicorn", "--workers=4", "--bind=0.0.0.0:8000", "app:app"]

