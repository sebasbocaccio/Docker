## Como desplegar passwordapi con 3 replicas en minikubes:
* Iniciar minikubes

        minikube start

* Crear el deployment 

        kubectl create -f deployment.yaml

* Listar los deployment para ver información.

        kubectl get deployment


* Crear el servicio 

        kubectl create -f service.yaml

* Listar servicios:

        kubectl get svc

* Para tener mas detalle del nuevo servicio:


        kubectl describe svc passwordapi-svc 


* Corroborar que la cantidad de pods es la misma que las esperadas (3 réplicas).

        kubectl get pods

* Conseguir la ip en la cual esta corriendo en minikubes 

        minikube ip

* Corroborar que la aplicacion funciona correctamente 

        curl minikube_ip:30020/

