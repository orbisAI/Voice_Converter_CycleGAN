FROM python:3.6

# update pip
RUN python3.6 -m pip install pip --upgrade
RUN python3.6 -m pip install wheel

# Install ffmpeg
RUN apt update
RUN apt install -y ffmpeg vim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install requirements
RUN pip3.6 install -r requirements.txt

# Run app.py when the container launches
CMD ["./download.sh"]
