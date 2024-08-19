/* Lógico_1: */
CREATE DATABASE estagioaluno;
USE estagioaluno;


CREATE TABLE Aluno (
    id int PRIMARY KEY auto_increment,
    matricula REAL,
    faculdade VARCHAR (90),
    nome VARCHAR (80),
    fk_Clinica_id int
);
describe aluno;

CREATE TABLE Clinica (
    id int PRIMARY KEY auto_increment,
    vagas REAL,
    Preceptor VARCHAR (50),
    especialidade VARCHAR (50)
);
 
 describe clinica;

 INSERT INTO clinica (vagas, preceptor, especialidade) VALUES
 ('10', 'marcos', 'pediatria');
  INSERT INTO clinica (vagas, preceptor, especialidade) VALUES
 ('12', 'sergio', 'cirurgia');
  INSERT INTO clinica (vagas, preceptor, especialidade) VALUES
 ('6', 'anastasio', 'oftalmologia');
 INSERT INTO clinica (vagas, preceptor, especialidade) VALUES
 ('14', 'camila', 'uti');
 
 SELECT * FROM clinica;
 
 
 INSERT INTO aluno (matricula, faculdade, nome) VALUES
('10000001', 'uniceplac', 'maria');
INSERT INTO aluno (matricula, faculdade, nome) VALUES
('10000002', 'atenas', 'jose');
INSERT INTO aluno (matricula, faculdade, nome) VALUES
('10000003', 'unifimes', 'carlos');
INSERT INTO aluno (matricula, faculdade, nome) VALUES
('10000001', 'projecao', 'ana');
INSERT INTO aluno (matricula, faculdade, nome) VALUES
('10000001', 'uniplan', 'lucas');
INSERT INTO aluno (matricula, faculdade, nome) VALUES
('10000078', 'unidf', 'robson');
INSERT INTO aluno (matricula, faculdade, nome) VALUES
('10000378', 'unieuro', 'carmem');
INSERT INTO aluno (matricula, faculdade, nome) VALUES
('10000068', 'unidf', 'roberto');
INSERT INTO aluno (matricula, faculdade, nome) VALUES
('10000075', 'uniplan', 'lucia');


INSERT INTO aluno (matricula, faculdade, nome , fk_clinica_id) VALUES
('1000022', 'uniceplac', 'maria', 4);
INSERT INTO aluno (matricula, faculdade, nome , fk_clinica_id) VALUES
('1000022', 'uniplan', 'ana', 2);
INSERT INTO aluno (matricula, faculdade, nome , fk_clinica_id) VALUES
('10000003', 'unifimes', 'carlos', 1);
INSERT INTO aluno (matricula, faculdade, nome , fk_clinica_id) VALUES
('1000002', 'atenas', 'jose', 1);
INSERT INTO aluno (matricula, faculdade, nome , fk_clinica_id) VALUES
('10000078', 'unidf', 'robson', 3);
INSERT INTO aluno (matricula, faculdade, nome , fk_clinica_id) VALUES
('10000001', 'uniplan', 'lucas', 3);
INSERT INTO aluno (matricula, faculdade, nome , fk_clinica_id) VALUES
('20000075', 'uniplan', 'lucia',4);
INSERT INTO aluno (matricula, faculdade, nome , fk_clinica_id) VALUES
('10000068', 'unidf', 'roberto',2);
INSERT INTO aluno (matricula, faculdade, nome , fk_clinica_id) VALUES
('10000378', 'unieuro', 'carmem',4);

SELECT * FROM aluno;
SELECT * FROM aluno WHERE id = 3;



show tables;



ALTER TABLE Aluno ADD CONSTRAINT FK_Aluno_2
    FOREIGN KEY (fk_Clinica_id)
    REFERENCES Clinica (id)
    ON DELETE RESTRICT;
    
    
drop table clinica;
drop table aluno;

alter table clinica modify  Preceptor VARCHAR (80);

select * from aluno
 where UPPER (nome) LIKE 'CA%'  -- Nome comeca com 'CA'

select * from aluno
 where UPPER (nome) LIKE '%CA%' -- Nome contem 'CA'
 
 select * from aluno
 where UPPER (nome) LIKE '%CA' -- Nome termina com 'CA'
 
  select * from aluno
 where UPPER (nome) LIKE '%A'
 
 SHOW FULL COLUMNS FROM aluno;	
 
 
delete from aluno where id= 10;
SELECT * FROM aluno;

SELECT * FROM aluno as a
JOIN clinica as c
ON a.fk_Clinica_id = c. id;