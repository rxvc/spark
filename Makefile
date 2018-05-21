qqqqqqqqrun:
	@ docker-compose up -d && sleep 1
	@ docker-compose exec jupyter jupyter notebook list

build:
	@ docker-compose build

rebuild: delete build

stop:
	@ docker-compose stop && sleep 1

delete: stop
	@ docker-compose rm -fv

show:
	@ docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Mounts}}\t{{.Ports}}\t{{.Names}}"
