FROM python:3.8

# install the required packages
RUN pip install fastapi uvicorn

# create a directory for our app
RUN mkdir /app

# set the working directory
WORKDIR /app

# copy the app to the container
COPY . /app

# expose the port 80
EXPOSE 80

# run the app
CMD ["uvicorn", "main:app", "--host",  "0.0.0.0", "--port", "80"]
