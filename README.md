# How to use

## Before using
 Download Docker and activate Docker App

## Set-up
run below codes and access http://localhost:3000/
```
docker-compose build
docker-compose up -d
docker-compose exec web bin/rails db:migrate RAILS_ENV=development
docker-compose exec web /bin/bash -c "yarn add @babel/plugin-proposal-private-methods @babel/plugin-proposal-private-property-in-object"
```

### how to check containerID
```
docker ps
```
run above code and you can see CONTAINER ID colum

