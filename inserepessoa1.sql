-- Obter o próximo ID da sequence
DECLARE @id_pessoa INT;
SET @id_pessoa = NEXT VALUE FOR dbo.s_pessoa_id;

-- Inserir dados comuns na tabela Pessoa
INSERT INTO Pessoa (id_pessoa, nome, tipo, endereco, telefone, email)
VALUES (@id_pessoa, 'João', 'F', 'Rua A, 123', '1234-5678', 'joao@mail.com');

-- Inserir dados específicos na tabela PessoaFisica
INSERT INTO PessoaFisica (id_pessoa, cpf)
VALUES (@id_pessoa, '12345678901');
GO
