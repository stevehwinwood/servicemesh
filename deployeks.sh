eksctl create cluster \
--name steve-eks3 \
--version 1.12 \
--nodegroup-name standard-workers \
--node-type t3.medium \
--nodes 3 \
--nodes-min 1 \
--nodes-max 4 \
--node-ami auto

kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml
kubectl apply -f eks-admin-service-account.yaml

curl -L https://git.io/getLatestIstio | sh -
kubectl apply -f istio-1.1.7/install/kubernetes/istio-demo.yaml
