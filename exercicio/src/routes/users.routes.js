const { Router } = require("express");

const usersController = require("../controllers/users.controller");

const routers = Router();


routers.get("/users", usersController.list);

routers.get("/users/:id", usersController.getById);

routers.post("/users", usersController.create);

routers.put("/users/:id", usersController.update);

routers.delete("/users/:id", usersController.remove);
//http://localhost:3333/users
//http://localhost:3333/users/:id

module.exports = routers;