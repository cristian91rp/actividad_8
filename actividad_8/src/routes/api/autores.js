const router = require("express").Router();

const {getAllAutores, getAutorById, createAutor, updateAutor, deleteAutor, getAllPostAutor} = require('../../controllers/autores.controller');


router.get('/', getAllAutores);
router.get('/:autor_id',  getAutorById);
router.get('/:autor_id/posts',  getAllPostAutor);
router.post('/', createAutor);
router.put('/:autor_id', updateAutor);
router.delete('/:autor_id', deleteAutor);

module.exports = router;


 
