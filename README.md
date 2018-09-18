# docker-with-awscli
Docker in docker image with aws cli included.


Helpful for continuous delivery functionality to build a docker image and push in to aws with few commands like:

# login and push a local image
$(aws ecr get-login --no-include-email --region $AWS_REGION | tr -d '\r')
docker push $AWS_REGISTRY_IMAGE:$CI_ENVIRONMENT_SLUG

# login to aws 
(ENV used: AWS_REGION, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY)
printf "%s\n%s\n$AWS_REGION\njson" "$AWS_ACCESS_KEY_ID" "$AWS_SECRET_ACCESS_KEY" | aws configure --profile my-profile
