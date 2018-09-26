# docker-rails-starter-for-mac

## What's This?

This `rep`ository is to create Ruby on Rails application without setting up Ruby on Rails environment into your local pc.

## Getting Started

### 0. Install Docker for Mac

Download Docker for Mac from [here](https://docs.docker.com/docker-for-mac/install/
).

Create Docker ID from [here](https://hub.docker.com/).

Start Docker for Mac in your pc.


### 1. Creating New Project

```sh
git clone https://github.com/lemor303442/docker-rails-starter
mv docker_rails_starter_for_mac <APP NAME> # only when you want to change the name of app
cd <APP NAME>
dbin/rails-new
```

### 2. Change Config Files

database.yml
```
username: <%= ENV.fetch('MYSQL_USER'){ '' } %>
password: <%= ENV.fetch('MYSQL_PASSWORD'){ '' } %>
host: <%= ENV.fetch('MYSQL_HOST'){ 'localhost' } %>
```

### 3. Start docker container

```sh
dbin/up
```

### 4. Starts rails server

```sh
rails db:create
rails s
```

## Commands

```sh
dbin/rails-new
```
Creates this directory a new rails project.
This command can be used once.

```sh
dbin/up
```
Builds and starts docker container and get into it.
You can use any rails commands in it.

```sh
dbin/down
```
Stops docker container.

```sh
dbin/build
```
Only builds docker image.

```sh
dbin/clean
```
Removes all containers and images.

```sh
dbin/clear-db
```
Clears local data in database.
