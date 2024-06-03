FROM debian:latest
WORKDIR /app

RUN apt update && \
	apt upgrade -y && \
	apt install wget git python3 python3-venv libgl1 libglib2.0-0 -y
	
RUN git clone https://github.com/vladmandic/automatic .


EXPOSE 7860
ENTRYPOINT ["/app/webui.sh", "--debug"]
