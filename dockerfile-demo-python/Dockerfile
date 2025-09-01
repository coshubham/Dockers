FROM python

WORKDIR /developer/pythonproject/flask-app

COPY . .

RUN pip install --no-cache-dir flask

CMD ["python3", "app.py"]

# we can also and recommend to use EXpOSE to document the port the app runs on
# EXPOSE 3005

# docker build -t python-app .
# docker run -it --init -p 3005:3005 python-app

# useing EXPOSE the command to run this image will be
# docker run -it --init -P python-app (capital P) is used to publish all exposed ports and map them to high-order ports
# docker run -it --init -p 3005:3005 python-app (small p) is used to publish a specific port and map it to a specific port