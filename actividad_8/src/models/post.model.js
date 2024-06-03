const selectAll = () => {
    return db.query("SELECT * FROM posts");
};


const selectById = (postId) => {
    return db.query(`SELECT posts.id
     AS post_id, posts.titulo, posts.descripcion, posts.fecha_creacion, posts.categoria, autores.id
     AS autor_id, autores.nombre, autores.apellido, autores.email, autores.imagen 
     FROM posts 
     JOIN autores 
     ON posts.autor_id = autores.id 
     WHERE posts.id = ?;`, [postId]);
};


const insert = ({titulo, descripcion, fecha_creacion, categoria, autor_id}) => {
    return db.query(
        `INSERT INTO posts (titulo, descripcion, fecha_creacion, categoria, autor_id) VALUES(?, ?, ?, ?, ?)`,
        [titulo, descripcion, fecha_creacion, categoria, autor_id]
    );
};


const updateById = (post_id, {titulo, descripcion, fecha_creacion, categoria, autor_id}) => {
    return db.query(
        `UPDATE posts
        SET titulo = ?, descripcion = ?, fecha_creacion = ?, categoria = ?, autor_id = ?
        WHERE id = ?`,
        [titulo, descripcion, fecha_creacion, categoria, autor_id, post_id]
    );
};


const deleteById = (post_id) => {
    return db.query('DELETE FROM posts WHERE id = ?', [post_id]);
};


module.exports = {
    selectAll,
    selectById,
    insert,
    updateById,
    deleteById
};