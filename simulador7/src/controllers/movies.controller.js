const { response } = require("express");

const movies = [];

const list = (request, response) => {
    response.json(movies);
};

const request = (request, response) =>{

    const { id } = request.params;
    
    const movie = movies.find(m => m.id === Number(id));

    response.json(movie);
};

const create = (request, response) => {

    const { id, title, description, year, genres, image, video} = request.body;

    const movie = {
        id: Number(id),
        title,
        description,
        year,
        genres,
        image,
        video,
    };
    movies.push(movie);
    response.json(movie);
};

const update = (request, response) => {
    
    const { id } = request.params;
    const { title, description, year, genres, image, video} = request.body;

    const movieIndex = movies.findIndex( f => f.id === Number(id));
    if(movieIndex < 0){
        response.end("Filme não encontrado");
    };
    const movieUpdate = {
        id: Number(id),
        title,
        description,
        year,
        genres,
        image,
        video
    };

    movies[movieIndex] = movieUpdate;

    response.json(movieUpdate);
};

const delet = (request, response) => {
    const { id } = request.params;
    const movieIndex = movies.findIndex( m => m.id === Number(id));

    if(movieIndex < 0){
        response.end("Filme não encontrado");
    };
    movies.splice(movieIndex, 1);
    
    response.end("Filme removido");
};

module.exports = {
    list,
    request,
    create,
    update,
    delet,
}