
Docker commands to buiuld techradar

docker build --label techradar -t techradar .
docker run -p 18080:8080 -d techradar