## Manual Installation
- Install nodejs locally
- Clone the repo
- Install dependencies (npm i)
- Start the DB locally
    - docker run -e POSTGRES_PASSWORD=pass -d -p 5432:5432 postgres
    - Go to aiven and get a new DB URL
- Change the .env file and update DB connection URL
- npx prisma migrate dev
- npx prisma generate
- npm run build
- npm run start


## Docker Installation
- Install Docker 
- Start a new Network `docker network create user_network`
- Start Postgres
    - `docker run --name postgres_db2 --network user_network -e POSTGRES_PASSWORD=pass -d -p 5432:5432 postgres`
(build step is also inside container only) -> without network
- Build the image - `docker build --network=host -t user-project .`
(but now it is happening on host machine)
- Start the image - `docker run -e DATABASE_URL=postgres://postgres:pass@postgres_db2:5432/postgres --network user_network -p 3000:3000 user-project`


## Docker-compose Installation
- Install docker, docker-compose
- Run `docker-compose up`