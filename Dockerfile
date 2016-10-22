FROM daocloud.io/python:3
RUN pip install mkdocs
COPY . /app
WORKDIR /app
# RUN pip install -r requires.txt
RUN mkdocs build
WORKDIR /app/site
CMD ["python", "-m", "http.server", "--bind", "0.0.0.0", "80"]
