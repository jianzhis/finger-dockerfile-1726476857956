FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY Finger.py ./

ENV Fofa_email=""
ENV Fofa_key=""
ENV QuakeKey=""

RUN useradd -m appuser
USER appuser

CMD ["python3", "Finger.py", "-h"]