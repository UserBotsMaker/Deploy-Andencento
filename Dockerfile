
FROM python:3.9
RUN git clone https://github.com/Andencento/Andencento.git /root/Andencento
WORKDIR /root/Andencento
ENV PYTHONUNBUFFERED=1
COPY . .
RUN pip install -r requirements.txt
RUN sh start.sh
