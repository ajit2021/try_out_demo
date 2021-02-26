FROM ubuntu:latest
RUN mkdir src
WORKDIR /src
COPY . .

RUN apt-get update && apt-get install -y python3 \
    python3-pip
RUN apt-get install -y git
#RUN git config --global user.email "ajitbhalerao74@gmail.com"
RUN git config --global core.editor 'vi'
RUN pip3 install jupyter

RUN pip3 install git_hooks
RUN pip3 install pandas
RUN pip3 install nbdev
RUN pip3 install sklearn


CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
