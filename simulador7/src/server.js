const express = require("express");

const movieRoutes = require("./routes/movies.routes")

const app = express();

const PORT = 3333;


app.use(express.json());
app.use(movieRoutes);

app.listen(PORT, () => {
    console.log("API is running");
});