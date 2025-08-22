docker build -t graalvmdemo-image .
docker run --name graalvmdemo -p 8080:8080 --cpus=1 -m 2048m graalvmdemo-image