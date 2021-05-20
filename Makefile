CONTAINER_ID := $(shell docker ps | grep 'zombie' | awk '{ print $$1 }')
all:
	$(NOOP)
build:
	docker build -t zombie .
run:
	docker run zombie
	docker container run -it zombie /bin/bash
ssh_zom_cont:
	@echo CONTAINER_ID IS $(CONTAINER_ID)
	docker exec -it "$(CONTAINER_ID)" bash