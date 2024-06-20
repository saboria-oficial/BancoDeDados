

--CRIAÇÃO DA TABELA 'PerfilFisico'


CREATE TABLE PerfilFisico (
    ID_PerfilFisico INTEGER IDENTITY PRIMARY KEY,
    Favoritos		VARCHAR,
    LocaisVisitados VARCHAR
);

SELECT * FROM PerfilFisico