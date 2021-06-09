# CloudComputing_Kubernetes

## Paso 1: Creación del clúster de Kubernetes en Google Cloud

- Accedemos al menú de navegación y luego al apartado Kubernetes Engine, donde creamos un nuevo clúster. Elegimos el tipo estándar y luego seleccionamos la configuración "Mi primer clúster". Dejamos todos los valores por defecto menos el nombre, al que le llamamos "cluster".

## Paso 2: Instalar Kubernetes

- Instalar Kubernetes en un sistema Ubuntu 18.04 siguiendo esta guía: https://kubernetes.io/es/docs/tasks/tools/install-kubectl/

- Ejecutar los siguientes comandos:

```
gcloud auth login
```

```
gcloud config set project [PROJECT_ID]
```

```
gcloud container clusters get-credentials [CLUSTER_NAME] --zone=[ZONE]
```

- Comprobamos la versión de Kubernetes:
```
kubectl version
```
- Para revisar las IP de nuestro clúster:
```
kubectl cluster-info
```
- Para comprobar los diferentes recursos asociados a Kubernetes:

```
kubectl get nodes
```
```
kubectl get pods
```
```
kubectl get services
```
```
kubectl get deployments
```

## Paso 3: 


