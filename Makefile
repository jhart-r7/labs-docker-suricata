image_name = labs-suricata

docker_build:
	docker build -t ${image_name} --build-arg CACHE_DATE=`date +%Y-%m-%d:%H:%M:%S` .
	docker tag ${image_name}:latest 181646978271.dkr.ecr.us-east-1.amazonaws.com/${image_name}:latest

docker_push:
	`aws ecr get-login`
	(aws ecr describe-repositories | jq -r '.["repositories"][] | .["repositoryUri"]' | egrep /${image_name}$ ) || aws ecr create-repository --repository-name ${image_name}
	docker push `aws ecr describe-repositories | jq -r '.["repositories"][] | .["repositoryUri"]' | egrep /${image_name}$\`:latest

docker_pull:
	`aws ecr get-login`
	docker pull `aws ecr describe-repositories | jq -r '.["repositories"][] | .["repositoryUri"]' | egrep /${image_name}$\`:latest

