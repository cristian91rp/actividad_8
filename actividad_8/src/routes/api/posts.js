const router = require("express").Router();

const {getAllPosts, getPostById, createPost, updatePost, deletePost} = require('../../controllers/post.controller');

router.get('/', getAllPosts);
router.get('/:post_id',  getPostById);
router.post('/', createPost);
router.put('/:post_id', updatePost);
router.delete('/:post_id', deletePost);

module.exports = router;
