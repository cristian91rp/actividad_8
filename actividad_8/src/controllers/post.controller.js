const Post = require("../models/post.model");

const getAllPosts = async (req, res, next) => {
        const [posts] = await Post.selectAll();
        res.json(posts);
};

const getPostById = async (req, res, next) => {
    try {
        const [post] = await Post.selectById(req.params.post_id);
        if (post.length === 0) {
            return res.status(404).json({error: "Post no encontrado"});
        }
        res.json(post[0]);
    } catch (err) {
        next(err);
    }
};

const createPost = async (req, res, next) => {
    try {
        const [newPost] = await Post.insert(req.body);
        const [[post]] = await Post.selectById(newPost.insertId);
        res.json(post);
    } catch (err) {
        next(err);
    }
};

const updatePost = async (req, res, next) => {
    try {
        const { post_id } = req.params;

        const [result] = await Post.updateById(post_id, req.body);
        
        if (result.affectedRows === 0) {
            return res.status(404).json({ message: 'No existe post' });
        }
        
        const [[post]] = await Post.selectById(post_id);

        if (!post) {
            return res.status(404).json({ message: 'No existe post' });
        }

        res.json(post);
    } catch (err) {
        next(err);
    }
};

const deletePost = async (req, res, next) => {
    try {
        const {post_id} = req.params;

        const [result] = await Post.deleteById(post_id);

        if (result.affectedRows === 1) {
            res.json({message: "Se ha borrado post"});
        } else {
            res.status(404).json({message: "El post no existe"});
        }
    } catch (err) {
        next(err);
    }
};

module.exports = {
    getAllPosts,
    getPostById,
    createPost,
    updatePost,
    deletePost,
};
