FROM node:18-alpine

# Copy files into the app directory.
COPY package.json package-lock.json /var/www/html/

WORKDIR /var/www/html

COPY . /var/www/html

CMD ["ls"]
# CMD ["npm", "start"] # Throws an error because package.json is missing

EXPOSE 80
