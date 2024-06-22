CREATE TABLE Blog (
    ID_blog			INTEGER IDENTITY PRIMARY KEY,
    Materia			VARCHAR(5000),
    Titulo			VARCHAR(200),
    Subtitulo		VARCHAR(200),
    Autor			VARCHAR(200),
    Data_Postagem	DATE,
    Area			VARCHAR(200)
);