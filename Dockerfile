# Koristi službeni Node.js imidž kao osnovu
FROM node:16

# Postavi radni direktorij
WORKDIR /usr/src/app

# Kopiraj package.json i package-lock.json
COPY package*.json ./

# Instaliraj npm pakete
RUN npm install

# Kopiraj ostatak aplikacije
COPY . .

# Izgradi aplikaciju
RUN npm run build

# Pokreni aplikaciju
CMD [ "npm", "start" ]
