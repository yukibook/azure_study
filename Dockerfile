FROM python:3.10
USER root
RUN apt-get update
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
# streamlit
RUN pip install streamlit 
RUN pip install pandas

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
EXPOSE 8501
COPY ./test /home/test
WORKDIR /home/test

CMD streamlit run app.py 