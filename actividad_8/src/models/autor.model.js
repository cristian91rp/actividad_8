const selectAll = () => {
    return db.query("SELECT * FROM autores");
};


const selectById = (autorId) => {
    return db.query("SELECT * FROM autores WHERE id = ?", [autorId]);
};


const allPost = (autorId) => {
    return db.query(`
    SELECT 
        posts.id, posts.titulo, posts.descripcion, posts.fecha_creacion, posts.categoria, autores.nombre, autores.apellido, autores.email, autores.imagen
    FROM 
        posts
    JOIN 
        autores ON posts.autor_id = autores.id
    WHERE 
        autores.id = ?`, [autorId]);
};


const insert = ({nombre, apellido, email, imagen}) => {
    return db.query(
        "INSERT INTO autores (nombre, apellido, email, imagen) VALUES(?, ?, ?, ?)",
        [nombre, apellido, email, imagen]
    );
};


const updateById = (autor_id, {nombre, apellido, email, imagen}) => {
    return db.query(
        `UPDATE autores 
        SET nombre =?, apellido = ?, email = ?, imagen = ?
        WHERE id = ?`,
        [nombre, apellido, email, imagen, autor_id]
    );
};


const deleteById = (autor_id) => {
    return db.query('DELETE FROM autores WHERE id = ?', [autor_id]);
};


module.exports = {
    selectAll,
    selectById,
    allPost,
    insert,
    updateById,
    deleteById
};
