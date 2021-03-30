FROM ubuntu:18.04
COPY my-bash.sh /
RUN apt update -y  && apt upgrade -y
RUN apt install wget -y
RUN chmod +x ./my-bash.sh && ./my-bash.sh https://www.wikipedia.org/ 
CMD echo Favicon is downloaded
