# First stage: build
FROM node:14-alpine AS build
WORKDIR /app
COPY . .
RUN npm install

# Second stage: runtime
FROM node:14-alpine
WORKDIR /app
COPY --from=build /app /app
EXPOSE 5000
CMD ["node", "index.js"]
