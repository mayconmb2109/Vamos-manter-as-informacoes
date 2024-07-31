-- Obter o próximo ID da sequence
DECLARE @id_pessoa INT;
SET @id_pessoa = NEXT VALUE FOR dbo.s_pessoa_id;

-- Inserir dados comuns na tabela Pessoa
INSERT INTO Pessoa (id_pessoa, nome, tipo, endereco, telefone, email)
VALUES (@id_pessoa, 'JJC', 'J', 'Avenida B, 456', '9876-5432', 'contato@empresa.com');

-- Inserir dados específicos na tabela PessoaJuridica
INSERT INTO PessoaJuridica (id_pessoa, cnpj)
VALUES (@id_pessoa, '12345678000199');
GO
