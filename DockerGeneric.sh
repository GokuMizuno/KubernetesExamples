#!bin\bash
function StartDockerContainer(nameOfContainer)
{
	docker build -t nameOfContainer .
	docker run nameOfContainer -p 3000
	#ex docker run --name Hello-World p 3000:3000 Hello-World-Image
}

function StartDockerSwarm(nameOfContainer, numOfInstances)
{
	#make yaml
}

kubectl create -f deployment.yml --save-config
kubectl get deployments
kubectl get pods


function DockerMakeYaml()
{
#final result should look like:
#apiVersion: apps/v1beta1
#kind: Deployment
#metadata:
#  name: hello-world-deployment
#spec:
#  replicas: 2
#  template:
#    metadata:
#      labels: # labels to select/identify the deployment
#        app: hello-world  
#    spec:     # pod spec                  
#      containers: 
#      - name: hello-world 
#        image: hello-world-image:v1 # image we pushed
#        ports:
#        - containerPort: 3000
}
