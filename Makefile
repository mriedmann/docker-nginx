NAME = mriedmann/nginx
VERSION = 0.0.1

all: build

build:
		docker build -t $(NAME):$(VERSION) .
		docker build -t $(NAME) .
