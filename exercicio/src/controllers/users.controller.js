const users = [];
const list = (request, response) => {
    response.json(users);    
};

const getById = (request, response) => {
    const { id } = request.params;

    const user = users.find((u) => u.id === Number(id));

    response.json(user);
};

const create = (request, response) => {
    const {id, name, email, password, age } = request.body;
    const user = {
        id: Number(id),
        name,
        email,
        password,
        age
    }
    
    users.push(user);
    response.json(user);
};

const update = (request, response) => {
    const {id} = request.params;
    const { name, email, password, age } = request.body;
    
    const userIndex = users.findIndex((u) => u.id === Number(id));

    if(userIndex < 0) {
    response.end("index do usuário não encontrado");
    };
    
    const userUpdated = {
        id: Number(id),
        name,
        email,
        password,
        age
    };
    users[userIndex] = userUpdated;
    
    response.json(userUpdated);

};

const remove = (request, response) => {
    const {id} = request.params;
    
    const userIndex = users.findIndex((u) => u.id === Number(id));
    
    if(userIndex < 0) {
    response.end("index do usuário não encontrado");
    };

    users.splice(userIndex, 1);
    
    response.end("usuário deletado com sucesso");
};

module.exports = {
    list,
    getById,
    create,
    update,
    remove
};