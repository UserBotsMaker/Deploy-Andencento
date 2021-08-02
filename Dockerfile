
FROM python:3.9
RUN git clone https://github.com/Andencento/Andencento.git /root/Andencento
WORKDIR /root/Andencento
ENV PYTHONUNBUFFERED=1
RUN pip install -r https://raw.githubusercontent.com/Andencento/Andencento/main/requirements.txt
COPY . .
CMD ["python3","-m","userbot"]
