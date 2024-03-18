## Instalar dependencias
```
npm install
```
## Ejecutar la aplicación

```
npm start
```

## PARA CONSTRUIR LA IMAGEN EJECUTAR EL DOCKERFILE
el punto significa al path relativo donde me encuentro

```
    docker build --tag cron-ticker:1.1.0 . 
```
## para otras Arquitecturas
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t <username>/<image>:latest --push .

## Document de Buildx
```
https://docs.docker.com/build/building/multi-platform/#getting-started
```