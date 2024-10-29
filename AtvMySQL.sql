CREATE DATABASE Consultorio; /* Criando o banco de dados */
use Consultorio; /* acessando o banco de dados */

DROP DATABASE Consultorio;

CREATE TABLE Paciente(
pk_id_paciente int auto_increment primary key, 
nome_paciente varchar(100) not null,
data_nasc_paciente date not null,
cpf_paciente char(11) not null,
genero_paciente enum('f', 'm', 'o'),
endereco_paciente varchar(100),
email_paciente varchar(50),
telefone_paciente char (13)
);
INSERT INTO paciente (nome_paciente, data_nasc_paciente, cpf_paciente, genero_paciente, endereco_paciente, email_paciente, telefone_paciente)
VALUES
('João da Silva', '19891030', '47653487590', 'm', 'Rua Joana Orion, 197', 'joãodasilva547@gmail.com', '551194678356'),
('Paulo Nalcio', '20020103', '76895605614', 'm', 'Rua itapecirica da serra', 'Paulnalcio453@gmail.com', '551196759056'),
('Hugo Ribeiro', '20033021', '37689654718', 'm', 'Rua Mauá', 'Hugorsousa47@gmail.com', '551198765345'),
('Wakanda Forever', '20013403', '96895705634', 'm', 'Rua serrana', 'Wakandaforever453@gmail.com', '551196758756'),
('Douglas souza', '20000709', '67595605614', 'm', 'Rua da serra', 'Douglassouza453@gmail.com', '551196759056'),
('Joana Sen', '20000708', '67515605614', 'm', 'Rua da monranha', 'Douglassoza453@gmail.com', '551196759056'),
('José Dario', '20000707', '67525605614', 'm', 'Rua do morro', 'Douglassoza453@gmail.com', '551196759056'),
('Domngos Ribeiro', '20000706', '63595605614', 'm', 'Rua do don', 'Douglasouza453@gmail.com', '551196759056'),
('Gonçalves de Sousa', '20000701', '64595605614', 'm', 'Rua da dan', 'Doglassouza453@gmail.com', '551196759056'),
('Anderson da Silva', '20000702', '67695605614', 'm', 'Rua da sorro', 'uglassouza453@gmail.com', '551196759056');


DESCRIBE paciente; /*estrutura da tabela */
SELECT * FROM paciente; /* Conteúdo da tabela */



CREATE TABLE dentista(
pk_id_dentista int auto_increment primary key,
nome_dentista varchar(100),
data_nasc_dentista date not null,
cro_dentista char (10),
genero_dentista enum ('m', 'f', 'o'),
endereco_dentista varchar (100),
telefone_dentista char(13)
);

INSERT INTO dentista(nome_paciente, data_nasc_dentista, cro_dentista, genero_dentista, endereco_dentista, telefone_dentista)
VALUES
('Dr. Sorriso Carvalho', '19960224', '12345', 'm', 'Rua ropolis', '551194768926'),
('Dra. Ana Molar', '19880515', '12346', 'f', 'Avenida das Flores, 45', '551194768927'),
('Dr. Pedro Dente', '19900110', '12347', 'm', 'Praça Central, 12', '551194768928'),
('Dra. Lívia Ortodontia', '19930522', '12348', 'f', 'Rua do Sol, 78', '551194768929'),
('Dr. Bruno Canino', '19871230', '12349', 'm', 'Estrada do Campo, 90', '551194768930'),
('Dra. Camila Odontologia', '19920905', '12350', 'f', 'Rua da Saúde, 34', '551194768931'),
('Dr. Ricardo Escovinha', '19850510', '12351', 'm', 'Avenida da Paz, 22', '551194768932'),
('Dra. Paula Clareamento', '19910818', '12352', 'f', 'Rua das Acácias, 18', '551194768933'),
('Dr. Felipe Raiz', '19951212', '12353', 'm', 'Rua do Parque, 56', '551194768934'),
('Dra. Júlia Proteses', '19890329', '12354', 'f', 'Praça da Liberdade, 3', '551194768935');

DESCRIBE dentista;
SELECT * FROM dentista;

CREATE TABLE consulta(
id_consulta int auto_increment primary key,
local_consulta varchar(100),
data_consulta datetime,
descricao_consulta varchar(100)
);

INSERT INTO consulta (local_consulta, data_consulta, descricao_consulta)
VALUES
('Rua Cecilia Silva', '2024-10-29 12:26:00', 'Abturação de 2 dentes'),
('Avenida das Palmeiras', '2024-10-30 09:00:00', 'Limpeza dental'),
('Praça da Saúde', '2024-11-02 14:30:00', 'Avaliação ortodontica'),
('Rua do Mercado', '2024-11-05 10:15:00', 'Extração de dente siso'),
('Avenida do Sol', '2024-11-07 11:00:00', 'Restauração de esmalte'),
('Rua das Flores', '2024-11-10 15:45:00', 'Consulta de acompanhamento'),
('Rua do Comércio', '2024-11-12 08:30:00', 'Tratamento de canal'),
('Avenida Central', '2024-11-15 13:00:00', 'Clareamento dental'),
('Rua dos Lírios', '2024-11-18 16:00:00', 'Consulta inicial'),
('Praça das Acácias', '2024-11-20 17:30:00', 'Protetor bucal');

DESCRIBE consulta;
SELECT * FROM consulta;