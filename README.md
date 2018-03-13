# Open Targets Docker Compose
Docker compose elements to run on single docker host for exploration.
```
docker-compose up -d elasticsearch
docker-compose exec elasticsearch /register_remote_repo.sh
docker-compose exec elasticsearch /recover-progress.sh
```
Once the snapshot recovery is complete run remaining services (restapi, webapp).
```
docker-compose up -d
```