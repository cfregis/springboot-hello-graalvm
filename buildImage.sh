mvn clean install -DskipTests
docker build -t graalvmdemo-image .
docker run -d --name graalvmdemo -p 8085:8085 --cpus=1 -m 2048m  graalvmdemo-image