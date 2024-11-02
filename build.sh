imagename="zero-to-hero-img"
container_name="zero-to-hero-container"
hub_imagename="eslamelashry/ansible_docker:v3"
myport="5000"
docker_port="5000"
namespace="zero-to-hero"
service_name="zero-to-hero-service"

docker stop ${container_name} || true

docker rm ${container_name} || true

docker rmi ${imagename} || true

docker build -t ${imagename} .

#docker tag ${imagename} ${hub_imagename}

docker push ${hub_imagename}

docker run -d --name ${container_name} -p ${myport}:${docker_port} ${imagename}



# minikube start 

# kubectl create ns ${namespace}

# kubectl apply -f k8s/

# minikube service ${service_name} -n ${namespace} --url




