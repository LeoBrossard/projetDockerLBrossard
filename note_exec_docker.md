
## Dockerfile Front

dans le fichier /front
''' docker build . -t fronttlc '''

''' docker run -p 8080:80 fronttlc '''


## Dockerfile Back

dans le fichier /api
''' docker build . -t backtlc '''

''' docker run -p 8081:8080 backtlc '''

## Docker compose

''' docker compose up '''
