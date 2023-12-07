# Gunakan base image yang diinginkan
FROM node:14-alpine

# Tentukan direktori kerja di dalam container
WORKDIR /app

# Salin file-file yang diperlukan ke dalam container
COPY . /app

# Atur variabel lingkungan jika diperlukan
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Instal dependensi dan bangun aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port yang digunakan oleh aplikasi
EXPOSE 8080

# Perintah untuk menjalankan aplikasi saat container dijalankan
CMD ["npm", "start"]
