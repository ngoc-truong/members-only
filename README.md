# Members-only

Members-Only is an app to learn how to build your own authentication system in ruby on rails. It is part of the [The Odin Project](https://www.theodinproject.com/lessons/authentication), a curriculum to learn full stack web development

# App description

In this app users can write posts. When a user is not logged in, he will not see the authors of the posts. When a user logs in, the author will appear. In this project an authentication system is written from scratch without using a gem.

## Data model

### User
- name: string [present, length: 50]
- email: string [present, length: 255, format regex, unique, case sensitive: false]
- password_digest: string 
- has_many :posts

### Post
- title: string [present]
- body: string [present]
- belongs_to :user