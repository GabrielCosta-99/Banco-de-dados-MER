CREATE TABLE Conta (
    CpfCliente VARCHAR(11) NOT NULL, 
    ID_Conta INTEGER NOT NULL,
    Nome_Cliente VARCHAR(100) COLLATE NOCASE NOT NULL, 
    Saldo_Atual DECIMAL(38,0) NULL,
    Chave_Pix VARCHAR(1) COLLATE NOCASE NOT NULL, 
    CONSTRAINT Chave_Pix_Conta_UNIQUE UNIQUE (Chave_Pix),
    CONSTRAINT ID_Conta_PK PRIMARY KEY (ID_Conta),
    CONSTRAINT Cpf_Cliente_Conta_UNIQUE UNIQUE (CpfCliente)
);


CREATE UNIQUE INDEX CPF_Cliente_Conta_UNIQUE ON Conta (CpfCliente);

CREATE TABLE Emprestimo (
    ID_Emprestimo INTEGER NOT NULL,
    Valor_Emprestimo DECIMAL(38,0) NOT NULL,
    Data_Solicitacao DATE NOT NULL,
    Juros DECIMAL(38,0) NOT NULL,
    Data_De_Vencimento DATE NOT NULL,
    Numero_Parcelas INTEGER NULL,  -- SQLite não suporta 'tinyint', alterado para 'INTEGER'
    ID_Conta INTEGER NULL,
    CONSTRAINT ID_Emprestimo_PK PRIMARY KEY (ID_Emprestimo),
    CONSTRAINT Emprestimo_Conta_FK FOREIGN KEY (ID_Conta) REFERENCES Conta(ID_Conta)
);

CREATE TABLE CartaoCredito (
    ID_Cartao INTEGER NOT NULL,
    ID_Conta INTEGER NULL,
    Limite DECIMAL(38,0) NULL,
    Cvv_cartaoCredito INTEGER NULL,  -- SQLite não suporta o tipo 'tinyint', usei 'INTEGER'
    Data_Aprovacao DATE NOT NULL,
    Fatura_Data DATE NOT NULL,
    CONSTRAINT ID_CartaoCredito_PK PRIMARY KEY (ID_Cartao),
    CONSTRAINT CartaoCredito_Conta_FK FOREIGN KEY (ID_Conta) REFERENCES Conta(ID_Conta)
);

CREATE TABLE PagamentoServico (
    Cod_Barras VARCHAR(1) COLLATE NOCASE NOT NULL,  -- Usando NOCASE no lugar de SQL_Latin1_General_CP1_CI_AS
    ID_Conta INTEGER NULL,
    Servico VARCHAR(100) COLLATE NOCASE NOT NULL,  -- Também aplicando NOCASE
    Valor_Pagamento DECIMAL(38,0) NULL,
    Data_Pagamento DATE NOT NULL,
    CONSTRAINT CodBarras_PagamentoServico_PK PRIMARY KEY (Cod_Barras),
    CONSTRAINT PagamentoServico_Conta_FK FOREIGN KEY (ID_Conta) REFERENCES Conta(ID_Conta)
);

CREATE TABLE Transacao (
    ID_Transacao INTEGER NOT NULL,
    ID_Conta INTEGER NULL,
    ID_Conta_Destino INTEGER NOT NULL,
    Valor_Transacao DECIMAL(38,0) NOT NULL,
    Data_Transacao DATE NOT NULL,
    Tipo_Transacao VARCHAR(1) COLLATE NOCASE NOT NULL,  -- Usando NOCASE no lugar de SQL_Latin1_General_CP1_CI_AS
    Horario_De_Transacao TEXT NOT NULL,  -- SQLite não possui o tipo 'time', então usamos 'TEXT' para armazenar no formato de tempo
    CONSTRAINT ID_Transacao_PK PRIMARY KEY (ID_Transacao),
    CONSTRAINT Transacao_Conta_FK FOREIGN KEY (ID_Conta) REFERENCES Conta(ID_Conta)
);