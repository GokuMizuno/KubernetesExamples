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
	#company stuff goes here for name, images, et al.
	#DO NOT FORGET DEFAULT VALUES FOR PORT, LABELS, 
	#example defaults
		${port:3000}
		${labels:nameOfContainer}
	DockerMakeYaml(name, image, numOfInstances, port, labels)
#}

kubectl create -f deployment.yml --save-config
kubectl get deployments
kubectl get pods
}

function DockerMakeYaml(name, image, replicas, port, labelsArray)
{
export name
export image
export replicas
export port
for(str in labelsArray)
	{  export str  }
#Add in company specific variables, and whatnot here.

rm -f deployment.yml temp.yml
(echo "cat << EOF > deployment.yml";
cat template.yml;
echo "EOF";
) > temp.yml
. temp.yml
cat deployment.yml
}
