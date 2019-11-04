#!\bin\bash

#kubernetes commands --useful list, not exhaustive

kubectl get services  #gets all services

kubectl get pods -o widw  #all pods, verbose
kubectl get pods --all-namespaces  #gets all pods

kubectl get pod myPod -o yaml  #gets pod's YAML


#kubernetes upgrade node function, not exhaustive
function UpGradeTheNode(nameOfNode)
{
	#drain in prep
	kubectl cordon nameOfNode
	kubectl drain nameOfNode
	kubectl get pod -o=custom-columns=nameOfNode:.metadata.name,STATUS:.status.pase,NODE:.spec.nameOfNode  #--all-namespaces
	#partial patch
	kubectl patch node k8s-node-1 -p '{"spec":{"unscheduable":true}}'
	#anything else that needs to be done, goes here

	#end by putting node back into place
	kubectl uncordon nameOfNode
}
