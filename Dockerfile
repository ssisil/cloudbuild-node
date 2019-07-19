FROM gcr.io/google-appengine/nodejs

WORKDIR /cloudbuild-node

COPY package.json /cloudbuild-node/
RUN npm install
COPY . /cloudbuild-node/

EXPOSE 3000

CMD ["npm", "start"]