FROM python:3-slim
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --upgrade pip 
RUN pip install --no-cache-dir -r requirements.txt
RUN useradd app
COPY . .
USER app
ENTRYPOINT [ "uvicorn", "main:app"]
CMD [ "--host", "0.0.0.0" ]
