# Heroku Docker Hello World
## A demonstration Ruby webserver for Heroku / Docker

### [Install Docker](https://docs.docker.com/engine/installation/)
### [Log in to Heroku](https://devcenter.heroku.com/articles/heroku-command-line)
### Install the container-registry plugin
```
$ heroku plugins:install heroku-container-registry
```
### Login to the registry
```
$ heroku container:login
```
### Get the code
```
$ git clone https://github.com/sjauld/heroku-docker-hello-world.git
$ cd heroku-docker-hello-world
```
### Build the app
```
$ docker build . -t my-test-app
```
### Run the app locally
```
$ docker run -p 9292:9292 my-test-app
```
### Deploy to heroku
```
$ heroku create
$ heroku container:push web
```
### Success!
```
heroku open
```
