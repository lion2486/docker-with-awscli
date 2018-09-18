# docker-with-awscli
Docker in docker image with aws cli included.


Helpful for continuous delivery functionality to build a docker image and push in to aws with few commands like:

$(aws ecr get-login --no-include-email --region $AWS_REGION | tr -d '\r')
docker push $AWS_REGISTRY_IMAGE:$CI_ENVIRONMENT_SLUG
