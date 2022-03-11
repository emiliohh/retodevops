# usando imagen liviana 
FROM node:17-alpine3.14 

# usando el usuario node que viene en la imagen 
USER node

#directorio donde copio la app
WORKDIR /home/node/

#copiando la app
COPY --chown=node:node ./app .

#instalando la app
RUN npm install

EXPOSE 3000

#ejecutando la app
CMD [ "node", "index.js" ]


