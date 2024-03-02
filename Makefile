
DIR_DOCKER_CONF = ./docker-conf

DOCKER_NGINX_PROXY_MANAGER = $(DIR_DOCKER_CONF)/docker-nginx-proxy-manager.yml
DOCKER_PORTAINER = $(DIR_DOCKER_CONF)/docker-portainer.yml
DOCKER_GRAFANA = $(DIR_DOCKER_CONF)/grafana-docker.yml

up-grafana:
	sudo docker compose -f ${DOCKER_GRAFANA} up -d --build

up-portainer:
	sudo docker compose -f ${DOCKER_PORTAINER} up -d --build

up-nginx-proxy-manager:
	sudo docker compose -f ${DOCKER_NGINX_PROXY_MANAGER} up -d --build

down-nginx-proxy-manager:
	sudo docker compose -f ${DOCKER_NGINX_PROXY_MANAGER} up
