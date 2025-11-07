FROM node:20-alpine

WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install

COPY . .

# build ke liye ye thik hai kyuki build host machine pe ho rha hai so localhost
# ENV DATABASE_URL=postgres://postgres:pass@localhost:5432/postgres
# making sure Dockerfile is not talking to DB
# RUN DATABASE_URL=$DATABASE_URL npx prisma migrate dev
RUN npx prisma generate
RUN npm run build

EXPOSE 3000

# Now this step migrate DB happens when the container starts
# upto that time Postgres is running, DB is already up
CMD [ "npm", "run", "dev:docker" ]