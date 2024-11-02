imagename="zero-to-hero-img:v3"
container_name="zero-to-hero-container"
hub_imagename="eslamelashry/ansible_docker:v3"
namespace="zero-to-hero"

docker stop ${container_name} || true

docker rm ${container_name} || true

docker rmi ${imagename} || true

docker rmi ${hub_imagename} || true

# kubectl delete ns ${namespace}

# minikube stop