--- CRIAÇÃO DA TABELA 'Pagamento'

CREATE TABLE Pagamento (
    ID_Pagamento		INTEGER IDENTITY PRIMARY KEY,
    tipo				VARCHAR(25) NOT NULL,
    banco				VARCHAR(100) NOT NULL,
    resp_finas			VARCHAR(120) NOT NULL,
    data_pag			DATE NOT NULL,
    hora				TIME NOT NULL,
    destinatario		VARCHAR(120) NOT NULL,
    valor				FLOAT NOT NULL,
    status_do_pagamento VARCHAR(30) NOT NULL
);


