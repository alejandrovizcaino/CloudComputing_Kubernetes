# CloudComputing_Kubernetes

## Paso 1: Creación del clúster de Kubernetes en Google Cloud

- Accedemos al menú de navegación y luego al apartado Kubernetes Engine, donde creamos un nuevo clúster. Elegimos el tipo estándar y luego seleccionamos la configuración "Mi primer clúster".

## Paso 2: Instalar Kubernetes

- Instalar Kubernetes en un sistema Ubuntu 18.04 siguiendo esta guía: https://kubernetes.io/es/docs/tasks/tools/install-kubectl/

- Ejecutar los siguientes comandos:

gcloud auth login

gcloud config set project [PROJECT_ID]

gcloud container clusters get-credentials [CLUSTER_NAME] --zone=[ZONE]

- Comprobamos la versión de Kubernetes:
kubectl version

- Para revisar las IP de nuestro clúster:
kubectl cluster-info

Paso 3:
