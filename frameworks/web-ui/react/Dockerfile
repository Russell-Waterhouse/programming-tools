from node:20.7.0 

WORKDIR /app

COPY package.json .

RUN npm install

COPY . /app

CMD [ "npm", "run", "dev" ]

