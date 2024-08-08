# Koristi Node.js 16 kao bazni image
FROM node:16

# Postavi radni direktorij unutar kontejnera
WORKDIR /app

# Kopiraj package.json i package-lock.json u radni direktorij
COPY package*.json ./

# Instaliraj zavisnosti
RUN npm install --unsafe-perm=true --all

# Kopiraj ostatak aplikacije u radni direktorij
COPY . .

# Izgradi aplikaciju za produkciju
RUN npm run build

# Postavi ENV varijablu za port (promijeni 3000 ako je port tvoje aplikacije drugačiji)
ENV PORT=3000

# Izloži port aplikacije
EXPOSE 3000

# Postavi komandnu koja će se pokrenuti kada se kontejner pokrene
CMD ["npm", "start"]
