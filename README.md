# Heroku Docker Hello World
## A demonstration Ruby webserver for Heroku / Docker

1. [Install Docker](https://docs.docker.com/engine/installation/)
2. [Log in to Heroku](https://devcenter.heroku.com/articles/heroku-command-line)
3. Install the container-registry plugin
  ```
  $ heroku plugins:install heroku-container-registry
  ```
4. Login to the registry
  ```
  $ heroku container:login
  ```
5. Get the code
  ```
  git clone https://github.com/sjauld/heroku-docker-hello-world.git
  cd heroku-docker-hello-world
  ```
6. Build the app
  ```
  docker build . -t my-test-app
  ```
7. Run the app locally
  ```
  docker run -p 9292:9292 my-test-app
  ```
8. Deploy to heroku
  ```
  heroku create
  heroku container:push web
  ```
9. Success!
  ```
  heroku open
  ```
