# Koristite Node.js 16 sliku kao osnovu
FROM node:16

# Postavite radni direktorijum
WORKDIR /app

# Kopirajte package.json i package-lock.json
COPY package*.json ./

# Promenite vlasništvo nad /root/.npm direktorijumom
RUN chown -R $(id -u):$(id -g) /root/.npm

# Instalirajte zavisnosti
RUN npm install

# Kopirajte ostatak aplikacije
COPY . .

# Izložite port koji vaša aplikacija koristi
EXPOSE 3000

# Pokrenite aplikaciju
CMD ["npm", "start"]
