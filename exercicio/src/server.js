const express = require("express");

const usersRoutes = require("./routes/users.routes");

const app = express();

const PORT = 3333;


app.use(express.json());

app.use(usersRoutes);



app.listen( PORT, () => {
    console.log(`API is runnig on port ${PORT}`);
});