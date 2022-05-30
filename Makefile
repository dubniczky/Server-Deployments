.PHONY: clean ccon cimg cvol

# Clear all untracked files
clean:
	git clean -fX

# Clear all containers
ccon:
	docker rm -f $(shell docker ps -a -q)

# Clear all images
cimg:
	docker rmi -f $(shell docker images -a -q)

# Clear all volumes
cvol:
	docker volume rm $(shell docker volume ls -q)
