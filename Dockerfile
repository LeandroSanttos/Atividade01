FROM openjdk:11
COPY . /app
WORKDIR /app
RUN javac Atividade01.java
CMD ["java", "HelloWorld"]
