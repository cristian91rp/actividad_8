const Autor = require("../models/autor.model");

const getAllAutores = async (req, res, next) => {
    try {
        const [autores] = await Autor.selectAll();
        res.json(autores);
    } catch (error) {
        next(err);
    }
};

const getAutorById = async (req, res, next) => {
    try {
        const [autor] = await Autor.selectById(req.params.autor_id);
        if (autor.length === 0) {
            return res.status(404).json({error: "Autor no encontrado"});
        }
        res.json(autor[0]);
    } catch (err) {
        next(err);
    }
};

const getAllPostAutor = async (req, res, next) => {
    try {
        const [autor] = await Autor.selectById(req.params.autor_id);
        if (autor.length === 0) {
            return res.status(404).json({error: "Autor no encontrado"});
        }

        const [PostAutor] = await Autor.allPost(req.params.autor_id);
        if (PostAutor.length === 0) {
            return res.status(404).json({error: "Autor sin posts"});
        }
        
        res.json(PostAutor);
    } catch (err) {
        next(err);
    }
}


const createAutor = async (req, res, next) => {
    try {
        const [newAutor] = await Autor.insert(req.body);

        const [[autor]] = await Autor.selectById(newAutor.insertId);
        res.json(autor);
    } catch (err) {
        next(err);
    }
};

const updateAutor = async (req, res, next) => {
    try {
    
        const {autor_id} = req.params;

        const [result] = await Autor.updateById(autor_id, req.body);
        const [[autor]] = await Autor.selectById(autor_id);
        res.json(autor);
    } catch (err) {
        next(err);
    }
};

const deleteAutor = async (req, res, next) => {
    
    try {
        const {autor_id} = req.params;

        const [result] = await Autor.deleteById(autor_id);

        if (result.affectedRows === 1) {
            res.json({message: "Se ha borrado autor y sus post"});
        } else {
            res.status(404).json({message: "El autor no existe"});
        }
    } catch (err) {
        next(err);
    }
};

module.exports = {
    getAllAutores,
    getAutorById,
    getAllPostAutor,
    createAutor,
    updateAutor,
    deleteAutor,
};
