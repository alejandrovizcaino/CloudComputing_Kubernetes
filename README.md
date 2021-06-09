# CloudComputing_Kubernetes

## Paso 1: Creación del clúster de Kubernetes en Google Cloud

- Accedemos al menú de navegación y luego al apartado Kubernetes Engine, donde creamos un nuevo clúster. Elegimos el tipo estándar y luego seleccionamos la configuración "Mi primer clúster". Dejamos todos los valores por defecto menos el nombre, al que le llamamos "cluster".

## Paso 2: Instalar Kubernetes

Instalar Kubernetes en un sistema Ubuntu 18.04 siguiendo esta guía: https://kubernetes.io/es/docs/tasks/tools/install-kubectl/

Ejecutar los siguientes comandos:

```
gcloud auth login
```

```
gcloud config set project [PROJECT_ID]
```

```
gcloud container clusters get-credentials [CLUSTER_NAME] --zone=[ZONE]
```

Comprobamos la versión de Kubernetes:
```
kubectl version
```
Para revisar las IP de nuestro clúster:
```
kubectl cluster-info
```
Para comprobar los diferentes recursos asociados a Kubernetes:

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

## Paso 3: Creación de los ficheros de nuestra aplicación

Nos creamos un directorio y en su interior nos creamos lo siguiente:

- Estos son los ficheros yaml para nuestra aplicación en PHP. El primero es el Deployment y el segundo el Service.
    - webserver.yml
    - webserver-svc.yml
- Para la base de datos MySQL nos creamos de igual forma un Deployment y un Service, además de un PersistentVolumeClaim.
  - mysql.yml
  - mysql-service.yml
  - persistentVolumeClaim.yml

## Paso 4: Ejecución

Para ejecutar todos los ficheros anteriormente creados nos movemos a la carpeta donde se encuentren y aplicamos el siguiente comando:
```
kubectl apply -f .
```

## Paso 5: Creación de la tabla en el container de MySQL

Ejecutamos el siguiente comando para acceder a una terminal del container.
```
kubectl exec [CONTAINER_NAME] -it -- bash
```
Accedemos con nuestras credenciales de MySQL, creamos la tabla e insertamos varias filas.

## Paso 6: Acceso a la aplicación web

Se puede acceder en el siguiente enlace: http://34.70.183.195/index.php







