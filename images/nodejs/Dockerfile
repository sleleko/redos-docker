FROM registry.red-soft.ru/ubi7/nodejs-18
MAINTAINER Sergey S. Leleko <w@leleko.ru>

# Set workdir
WORKDIR /opt/app-root/src
# Copying files package.json and package-lock.json from local dir to work dir
COPY www/frontend/package*.json /opt/app-root/src/

# Install Vite and Vue.js
RUN npm install

# Open port for Vite
EXPOSE 5173

# Uncomment this for forst run installation
#CMD ["npm", "install"]

# Launch dev server (comment this if you need to first instaall packages)
CMD ["npm", "run", "dev", "--", "--port", "5173", "--host"]
