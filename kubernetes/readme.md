```
cd terraform/scripts
```

```
./tf-init.sh
```

```
./tf-plan.sh
```

```
./tf-apply.sh
```


```
cd ../src
```

```
terraform output -raw kube_config > kubeconfig.yaml
```

```
export KUBECONFIG=$(pwd)/kubeconfig.yaml
```


```
kubectl get nodes
```

```
cd ../..
```


```
kubectl apply -f apps/echo/namespace.yaml
kubectl apply -f apps/echo/deployment.yaml
kubectl apply -f apps/echo/service.yaml
kubectl apply -f apps/echo/ingress.yaml
```

```
kubectl get pods,svc -n tech-hub

```

```
curl -H "Host: echo.tech-hub.demo" http://<IP>
```


DEMO 2


```
kubectl -n tech-hub scale deployment/http-echo-demo --replicas 4
```



