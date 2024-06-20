--- CRIAÇÃO DA TABELA 'Pagamento'

CREATE TABLE Pagamento (
    ID_Pagamento INTEGER PRIMARY KEY UNIQUE,
    tipo VARCHAR,
    banco VARCHAR,
    resp_finas VARCHAR,
    data DATE,
    hora TIME,
    destinatario VARCHAR,
    valor FLOAT,
    nota_fiscal VARCHAR,
    status_do_pagamento ENUM
);


