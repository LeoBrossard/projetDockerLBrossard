FROM ubuntu AS build-stage

RUN apt-get update && apt-get install -y nodejs npm


RUN git clone https://github.com/LeoBrossard/projetDockerLBrossard.git

WORKDIR /projetDockerLBrossard/front
	
RUN npm install
RUN npm run build


FROM nginx AS running-stage

COPY --from=build-stage /projetDockerLBrossard/front/dist/tlcfront /usr/share/nginx/html
    