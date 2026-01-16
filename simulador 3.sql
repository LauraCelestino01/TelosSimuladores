CREATE DATABASE telos

USE telos

CREATE TABLE Livros(
	livro_id INT IDENTITY(1,1) PRIMARY KEY,
	titulo VARCHAR(100) NOT NULL,
	autor VARCHAR(100) NOT NULL,
	genero VARCHAR(100) NOT NULL,
	publicacao_ano CHAR(4) NOT NULL
)

CREATE TABLE Usuarios(
	usuario_id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL
)

CREATE TABLE Emprestimos(
	emprestimos_id INT IDENTITY(1,1) PRIMARY KEY,
 	livro_id INT NOT NULL,
	usuario_id INT NOT NULL,
	data_emprestimo DATE NOT NULL,
	data_devolucao DATE NOT NULL,
	
	
CONSTRAINT fk_Livros_Empresrimos FOREIGN KEY (livro_id)	
REFERENCES Livros(livro_id),
CONSTRAINT fk_Ususarios_Emprestimos FOREIGN KEY (usuario_id)
REFERENCES Usuarios(usuario_id)
)



INSERT INTO Livros (titulo, autor, genero, publicacao_ano) VALUES
('1984', 'G. Orwell', 'Ficção Científica', '1949'),
('1984', 'G. Orwell', 'Ficção Científica', '1949'),
('Admirável Mundo Novo', 'A. Huxley', 'Ficção Científica', '1932'),
('Crime e Castigo', 'F. Dostoiévski', 'Romance Psicológico', '1866'),
('Orgulho e Preconceito', 'J. Austen', 'Romance', '1813'),
('O Grande Gatsby', 'F.S. Fitzgerald', 'Romance', '1925'),
('Os Miseráveis', 'V. Hugo', 'Romance Histórico', '1862'),
('O Morro dos Ventos Uivantes', 'E. Brontë', 'Romance Gótico', '1847'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Fantasia', '1997'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Fantasia Épica', '1954'),
('As Crônicas de Nárnia: O Leão, a Feiticeira e o Guarda-Roupa', 'C.S. Lewis', 'Fantasia', '1950'),
('Duna', 'F. Herbert', 'Ficção Científica', '1965'),
('Fundação', 'I. Asimov', 'Ficção Científica', '1951')

UPDATE Livros SET genero = 'Fantasia' WHERE livro_id = 10

DELETE FROM Livros WHERE titulo = '1984'

SELECT titulo, autor FROM Livros 


INSERT INTO Usuarios (nome, email) VALUES
('Suelen Castro Silva', 'suelen.Silva.SDS@email.com'),
('Fernando José Bezera de Brito Filho', 'fernadojbl@email.com'),
('Maruza Gabrielle Martins Campelo', 'batzmaru.monster@email.com'),
('Raphael Barbosa Holmes', 'xeroxholmes@email.com'),
('Ana Paula Ribeiro', 'ana.ribeiro@hotmail.com'),
('Carlos Henrique Souza', 'carlos.souza@gmail.com'),
('Mariana Lopes Costa', 'mariana.costa@gmail.com'),
('Lucas Fernando Almeida', 'lucas.almeida@edu.org'),
('Juliana Martins Rocha', ' juliana.rocha@gmail.com'),
('Rafael Gomes Pereira', 'rafael.pereira@gmail.com'),
('Beatriz Nunes Silva', 'beatriz.silva@hotmail.com')

UPDATE Usuarios SET email = 'lucas.almeida@edu.org.br' WHERE usuario_id = 8

DELETE FROM Usuarios WHERE usuario_id = 10

SELECT nome FROM Usuarios 


INSERT INTO Emprestimos (livro_id, usuario_id, data_emprestimo, data_devolucao ) VALUES
(4, 4, '2025-01-21', '2025-01-27'),
(1, 3, '2025-02-01', '2025-02-06'),
(11, 7, '2025-02-01', '2025-02-03'),
(6, 2, '2025-02-03', '2025-02-10'),
(10,11, '2025-02-05', '2025-02-10'),
(11, 4, '2025-02-05', '2025-02-12')





