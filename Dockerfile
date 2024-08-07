FROM node:16

# Postavi radni direktorijum
WORKDIR /app

# Kopiraj package.json i package-lock.json
COPY package*.json ./

# Instaliraj zavisnosti
RUN npm install --unsafe-perm=true --allow-root

# Kopiraj ostatak aplikacije u radni direktorijum
COPY . .

# Izgradi aplikaciju za produkciju
RUN npm run build

# Postavi komandnu koja će se pokrenuti kada se container pokrene
CMD ["npm", "start"]

# Otvori port 3000
EXPOSE 3000
