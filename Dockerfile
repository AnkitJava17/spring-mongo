FROM openjdk:17-jdk-alpine
WORKDIR usr/src
ENV MONGO_DB=noteDB
ENV MONGO_URI=mongodb://localhost:27017/noteDB
ADD ./target/NoteRestfulMongoDemo-0.0.1-SNAPSHOT.jar /usr/src/NoteRestfulMongoDemo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Dspring.data.mongodb.uri=mongodb://mongocontainer/noteDB","-jar","NoteRestfulMongoDemo-0.0.1-SNAPSHOT.jar"]