# How to set up

##  Before you start this app
run below codes
```
docker exec -it containerID bin/rails db:migrate RAILS_ENV=development
docker exec -it containerID /bin/bash -c "yarn add @babel/plugin-proposal-private-methods @babel/plugin-proposal-private-property-in-object"
```
### how to check containerID
```
docker ps
```
run above code and you can see CONTAINER ID colum
## you can start "docker-compose up"
