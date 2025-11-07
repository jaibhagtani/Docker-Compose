import express from "express"
import client = require("./generated/prisma/client");
const app = express();
const prismaClient = new client.PrismaClient();
app.get("/", async (req: any, res: any) => {

    const data = await prismaClient.user.findMany();

    res.json({
        data
    })
});


app.post("/", async (req: any, res: any) => {

    await prismaClient.user.create({
        data: {
            username: Math.random.toString(),
            password: Math.random.toString()
        }
    });
    res.json({
        "msg": "Post endpoint"
    })
});

app.listen(3000);