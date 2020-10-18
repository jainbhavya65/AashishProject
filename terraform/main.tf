provider "docker" {
   host = "unix:///var/run/docker.sock"
}

# declare any input variables

# create docker volume resource

# create docker network resource

# create db container
resource "docker_container" "db" {
  name  = "db"
  image = "mysql"
  restart = "always"
  env = ["MYSQL_ROOT_PASSWORD=secret", "MYSQL_DATABASE=store"]
  ports {
    external = 3307
    internal = 3306
  }
}

# create wordpress container
resource "docker_container" "web" {
  name  = "web"
  image = "test:v1"
  restart = "always"
  ports {
    external = 8081
    internal = 80
  }
}
