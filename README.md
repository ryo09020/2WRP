# Who read what paper

# How to use

## Before using
 Download Docker and activate Docker App

## Set-up
run below codes and access http://localhost:3000/
```
docker-compose build
docker-compose up -d
docker-compose exec web bin/rails db:migrate RAILS_ENV=development
```

### how to check containerID
```
docker ps
```
run above code and you can see CONTAINER ID colum

# 機能
- 読んだ論文を投稿
- 論文にコメント、いいね
- ユーザー情報登録、編集
- Xみたいなことができるアプリ(論文.ver)
