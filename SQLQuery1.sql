create database Romollus;

use Romollus;

CREATE TABLE Usuario (
ID int PRIMARY KEY,
Nome varchar(120) not null,
Senha varchar(32) not null,
DataHoraCrianao datetime not null,
DataHoraUltimoAcesso datetime not null,
email varchar(120) not null,
fkTipoUsuarioID int 
);



truncate table Usuario;

select * from Usuario;


INSERT INTO Usuario (ID, Nome, Senha, DataHoraCrianao, DataHoraUltimoAcesso, Email) VALUES (1, 'Maria', '1234',GETDATE(),GETDATE(), 'maria@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCrianao, DataHoraUltimoAcesso, Email) VALUES (2, 'Pedro', '12345',GETDATE(),GETDATE(), 'pedro@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCrianao, DataHoraUltimoAcesso, Email) VALUES (3, 'Miguel', '123456',GETDATE(),GETDATE(), 'miguel@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCrianao, DataHoraUltimoAcesso, Email) VALUES (4, 'Lucas', '12345678',GETDATE(),GETDATE(), 'lucas@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCrianao, DataHoraUltimoAcesso, Email) VALUES (5, 'Luiz', '123456789',GETDATE(),GETDATE(), 'luiz@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCrianao, DataHoraUltimoAcesso, Email) VALUES (6, 'Sabrina', '12349',GETDATE(),GETDATE(), 'sabrina@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCrianao, DataHoraUltimoAcesso, Email) VALUES (7, 'artur', '123498',GETDATE(),GETDATE(), 'artur@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCrianao, DataHoraUltimoAcesso, Email) VALUES (8, 'paulo', '1234987',GETDATE(),GETDATE(), 'paulo@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCrianao, DataHoraUltimoAcesso, Email) VALUES (9, 'fernando', '12349876',GETDATE(),GETDATE(), 'fernando@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCrianao, DataHoraUltimoAcesso, Email) VALUES (10, 'julia', '123498765',GETDATE(),GETDATE(), 'julia@gmail');

update Usuario SET fkTipoUsuarioID = 1 where ID = 1;
update Usuario SET fkTipoUsuarioID = 2 where ID = 2;
update Usuario SET fkTipoUsuarioID = 3 where ID = 3;
update Usuario SET fkTipoUsuarioID = 4 where ID = 4;
update Usuario SET fkTipoUsuarioID = 5 where ID = 5;
update Usuario SET fkTipoUsuarioID = 6 where ID = 6;
update Usuario SET fkTipoUsuarioID = 7 where ID = 7;
update Usuario SET fkTipoUsuarioID = 8 where ID = 8;
update Usuario SET fkTipoUsuarioID = 9 where ID = 9;
update Usuario SET fkTipoUsuarioID = 10 where ID = 10;


CREATE TABLE TipoUsuario (
ID int PRIMARY KEY,
Tipo varchar(80) not null
);


select * from TipoUsuario;
INSERT INTO TipoUsuario (ID, Tipo) VALUES (1, 'Engenheiro');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (2, 'Professor');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (3, 'Médico');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (4, 'Advogado');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (5, 'Designer');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (6, 'Programador');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (7, 'Estudante');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (8, 'Arquiteto');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (9, 'Contador');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (10, 'Enfermeiro');

CREATE TABLE Cidade (
Nome_cidade varchar(60) not null,
ID int PRIMARY KEY,
fkUFID int 
);



select * from Cidade;

INSERT INTO Cidade (ID, Nome_cidade) VALUES (1, 'São Paulo');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (2, 'Rio de Janeiro');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (3, 'Belo Horizonte');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (4, 'Salvador');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (5, 'Brasília');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (6, 'Curitiba');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (7, 'Recife');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (8, 'Porto Alegre');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (9, 'Fortaleza');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (10, 'Manaus');

CREATE TABLE Bairro (
ID int PRIMARY KEY,
Nome_bairro varchar(60) not null,
fkCidadeID int 
);




select *from Bairro;

INSERT INTO Bairro (ID, Nome_bairro) VALUES (1, 'Copacabana');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (2, 'Ipanema');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (3, 'Leblon');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (4, 'Barra da Tijuca');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (5, 'Botafogo');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (6, 'Tijuca');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (7, 'Flamengo');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (8, 'Lapa');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (9, 'Santa Teresa');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (10, 'Gávea');


CREATE TABLE UF (
ID int PRIMARY KEY,
Nome_UF varchar(120) not null,
Sigla_UF char(2) not null
);


select * from UF;

INSERT INTO UF (ID, Nome_UF, Sigla_UF) VALUES (1, 'Acre', 'AC');
INSERT INTO UF (ID,Nome_UF, Sigla_UF) VALUES (2, 'Alagoas', 'AL');
INSERT INTO UF (ID, Nome_UF, Sigla_UF) VALUES (3, 'Amapá', 'AP');
INSERT INTO UF (ID, Nome_UF, Sigla_UF) VALUES (4, 'Amazonas', 'AM');
INSERT INTO UF (ID, Nome_UF, Sigla_UF) VALUES (5, 'Bahia', 'BA');
INSERT INTO UF (ID, Nome_UF, Sigla_UF) VALUES (6, 'Ceará', 'CE');
INSERT INTO UF (ID, Nome_UF, Sigla_UF) VALUES (7, 'Espírito Santo', 'ES');
INSERT INTO UF (ID, Nome_UF, Sigla_UF) VALUES (8, 'Goiás', 'GO');
INSERT INTO UF (ID, Nome_UF, Sigla_UF) VALUES (9, 'Maranhão', 'MA');
INSERT INTO UF (ID, Nome_UF, Sigla_UF) VALUES (10, 'Mato Grosso', 'MT');



CREATE TABLE Endereco (
ID int PRIMARY KEY,
Logradouro varchar(120) not null,
Numero int not null,
Complemento varchar(120) ,
fkBairroID int 
);


select * from Endereco;
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (1, 'Rua das Flores', 123, 'Casa 1');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (2, 'Avenida Principal', 456, 'Apartamento 3B');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (3, 'Rua dos Pinheiros', 789, 'Sala 2');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (4, 'Rua das Palmeiras', 1011, 'Casa 5');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (5, 'Avenida das Acácias', 1315, 'Bloco A, Apt 7');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (6, 'Rua das Violetas', 1617, 'Casa 8');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (7, 'Avenida dos Girassóis', 1820, 'Bloco C, Apt 12');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (8, 'Rua das Margaridas', 2022, 'Sala 4');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (9, 'Avenida das Hortênsias', 2324, 'Casa 15');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (10, 'Rua dos Cravos', 2526, 'Apartamento 17');


CREATE TABLE TipoAnuncio (
ID int PRIMARY KEY,
NomeTipoAnuncio varchar(30) not null
);


select* from TipoAnuncio;
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (1, 'Venda');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (2, 'Aluguel');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (3, 'Troca');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (4, 'Doação');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (5, 'Emprego');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (6, 'Serviços');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (7, 'Evento');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (8, 'Compra');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (9, 'Procura');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (10, 'Outro');


CREATE TABLE Imovel (
Qtd_vaga int not null,
Qtd_quarto int not null,
Qtd_suite int not null,
Qtd_banheiro int not null,
Area_util int not null,
Valor_imovel decimal not null,
ID int PRIMARY KEY,
Observacoes text not null,
fkTipoImovelID int,
fkEnderecoID int ,
fkTipoAnuncioID int
);


select * from Imovel;
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Areautil, Valorimovel, ID, Observacoes) VALUES (2, 3, 1, 2, 150, 250000.00, 1, 'Apartamento bem localizado');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Areautil, Valorimovel, ID, Observacoes) VALUES (1, 2, 0, 1, 80, 150000.00, 2, 'Casa com jardim espaçoso');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Areautil, Valorimovel, ID, Observacoes) VALUES (3, 4, 2, 3, 220, 400000.00, 3, 'Cobertura com vista panorâmica');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Areautil, Valorimovel, ID, Observacoes) VALUES (2, 3, 2, 2, 180, 320000.00, 4, 'Apartamento mobiliado');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Areautil, Valorimovel, ID, Observacoes) VALUES (1, 1, 1, 1, 50, 120000.00, 5, 'Studio no centro da cidade');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Areautil, Valorimovel, ID, Observacoes) VALUES (2, 2, 1, 1, 90, 180000.00, 6, 'Apartamento com área de lazer');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Areautil, Valorimovel, ID, Observacoes) VALUES (2, 3, 1, 2, 120, 210000.00, 7, 'Apartamento bem iluminado');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Areautil, Valorimovel, ID, Observacoes) VALUES (0, 5, 4, 3, 300, 600000.00, 8, 'Casa ampla com piscina');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Areautil, Valorimovel, ID, Observacoes) VALUES (2, 3, 2, 2, 160, 280000.00, 9, 'Apartamento próximo ao metrô');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Areautil, Valorimovel, ID, Observacoes) VALUES (1, 2, 1, 1, 75, 135000.00, 10, 'Casa térrea com quintal');


CREATE TABLE TipoImovel (
ID int PRIMARY KEY,
NomeTipoImovel varchar(80) not null
);


select * from TipoImovel;
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (1, 'Casa');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (2, 'Apartamento');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (3, 'Cobertura');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (4, 'Chácara');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (5, 'Sobrado');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (6, 'Kitnet');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (7, 'Loft');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (8, 'Terreno');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (9, 'Fazenda');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (10, 'Prédio');


CREATE TABLE Imagem (
ID int PRIMARY KEY,
Nome_Imagem varchar(120) not null,
url varchar(80) not null,
fkImovelID int 
);


select * from Imagem;
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (1, 'img1', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (2, 'img2', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (3, 'img3', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (4, 'img4', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (5, 'img5', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (6, 'img6', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (7, 'img7', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (8, 'img8', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (9, 'img9', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (10, 'img10', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (11, 'img11', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (12, 'img12', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (13, 'img13', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (14, 'img14', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (15, 'img15', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (16, 'img16', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (17, 'img17', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (18, 'img18', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (19, 'img19', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (20, 'img20', 'https:\\C:\Users\ead\Desktop\SpeedTests\Tela\WSBRASIL\Projeto Teste PHP - PE\imagens');



CREATE TABLE Logins (
ID int PRIMARY KEY,
Email varchar(120) not null,
Senha varchar(32) not null,
ID_Usuario int 
);



GO
CREATE PROCEDURE ConsultaPorCidade
    @ID INT
AS
BEGIN
	SELECT Logradouro, Numero, Complemento, Nome_Bairro, Nome_Cidade, Sigla_UF
	FROM Endereco
	INNER JOIN Bairro
	ON Endereco.fkBairroID = Bairro.ID
	INNER JOIN Cidade
	ON Bairro.fkCidadeID = Cidade.ID
	INNER JOIN UF
	ON Cidade.fkUFID = UF.ID
	WHERE Cidade.ID = @ID
END;

EXEC ConsultaPorCidade @ID=3;

select * from Imovel;








select * from Logins;
INSERT INTO Logins (id,Email,Senha) VALUES (1,'luizGustavo@gmail.com','Ksdf#2dps');
INSERT INTO Logins (id,Email,Senha) VALUES (2,'maria@hotmail.com','HjD7&j2P');
INSERT INTO Logins (id,Email,Senha) VALUES (3,'joao@gmail.com','5Gw$PqY!');
INSERT INTO Logins (id,Email,Senha) VALUES (4,'ana@yahoo.com','R1lM#8x@');
INSERT INTO Logins (id,Email,Senha) VALUES (5,'carlos@gmail.com','9hT$zNp2');
INSERT INTO Logins (id,Email,Senha) VALUES (6,'sophia@gmail.com','Lp@7r3qA');
INSERT INTO Logins (id,Email,Senha) VALUES (7,'pedro@yahoo.com','6sK#Pv9j');
INSERT INTO Logins (id,Email,Senha) VALUES (8,'julia@hotmail.com','4hD%oLp8');
INSERT INTO Logins (id,Email,Senha) VALUES (9,'gabriel@gmail.com','G2j#4LpM');
INSERT INTO Logins (id,Email,Senha) VALUES (10,'laura@yahoo.com','Y6k@9qSd');


ALTER TABLE Usuario ADD CONSTRAINT FKUsuario2
FOREIGN KEY (fkTipoUsuarioID)
REFERENCES TipoUsuario (ID)
ON DELETE CASCADE;


ALTER TABLE Cidade ADD CONSTRAINT FKCidade2
FOREIGN KEY (fkUFID)
REFERENCES UF (ID)
ON DELETE cascade;


ALTER TABLE Bairro ADD CONSTRAINT FKBairro2
FOREIGN KEY (fkCidadeID)
REFERENCES Cidade (ID)
ON DELETE cascade;


ALTER TABLE Endereco ADD CONSTRAINT FKEndereco2
FOREIGN KEY (fkBairroID)
REFERENCES Bairro (ID)
ON DELETE cascade;


ALTER TABLE Imovel ADD CONSTRAINT FKImovel2
FOREIGN KEY (fkTipoImovelID)
REFERENCES TipoImovel (ID)
ON DELETE CASCADE;


ALTER TABLE Imovel ADD CONSTRAINT FKImovel3
FOREIGN KEY (fkEnderecoID)
REFERENCES Endereco (ID)
ON DELETE cascade;


ALTER TABLE Imovel ADD CONSTRAINT FKImovel4
FOREIGN KEY (fkTipoAnuncioID)
REFERENCES TipoAnuncio (ID)
ON DELETE CASCADE;


ALTER TABLE Imagem ADD CONSTRAINT FKImagem2
FOREIGN KEY (fkImovelID)
REFERENCES Imovel (ID)
ON DELETE cascade;


ALTER TABLE Login ADD CONSTRAINT FKLogin2
FOREIGN KEY (ID_Usuario)
REFERENCES Usuario (ID);
