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




## Docker-compose Installation
