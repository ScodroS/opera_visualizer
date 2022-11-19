FROM ubuntu:jammy
ENV TZ=Europe/Rome
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt install -y ffmpeg libsm6 libxext6 git python3 python3-pip
RUN git clone https://github.com/ScodroS/opera_visualizer.git
WORKDIR "/opera_visualizer"
RUN pip3 install -r pip_requirements.txt
CMD ["python3", "visualizer.py"]
