---
CREATE TABLE Avaliacao (
    ID_Avaliacao INTEGER IDENTITY PRIMARY KEY,
    Comentario VARCHAR(350),
    Estrelas NUMERIC(10),
    Indicaria VARCHAR(10)
);
