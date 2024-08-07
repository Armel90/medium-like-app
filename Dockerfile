# Koristi Node.js 18 kao osnovnu sliku
FROM node:18

# Postavi radni direktorijum
WORKDIR /app

# Kopiraj package.json i package-lock.json (ako postoji)
COPY package*.json ./

# Instaliraj zavisnosti
RUN npm install

# Kopiraj sve ostale fajlove u radni direktorijum
COPY . .

# Instaliraj dodatne zavisnosti koje možda nedostaju
RUN npm install sanity/cli

# Izgradi aplikaciju
RUN npm run build

# Izloži port na kojem aplikacija radi
EXPOSE 3000

# Pokreni aplikaciju
CMD ["npm", "run", "dev"]
