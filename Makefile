GCLOUD_PROJECT:=$(shell gcloud config list project --format="value(core.project)")
PROJECT_NAME:=klaxon

build:
	docker build -t us.gcr.io/$(GCLOUD_PROJECT)/$(PROJECT_NAME) .

push: build
	docker push us.gcr.io/$(GCLOUD_PROJECT)/$(PROJECT_NAME)