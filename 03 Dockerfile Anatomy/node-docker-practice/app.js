const express = require("express");

const app = express();

app.get("/", (req, res) => {
    res.send("<h1>Hello Rupom. Welcome to the learning of Docker</h1>")
})

app.listen(process.env.PORT || 4000, () => {
    console.log("Listening on port " + process.env.PORT);
})