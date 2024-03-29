use e_commerce;
 
SELECT * FROM CLIENTES;
INSERT INTO CLIENTES
VALUES
( NULL, 'adrian', 'adrianfz1@gmail.com', '999897632', '2007-03-08' ),
( NULL, 'guga', 'gugaaf2@gmail.com', '995439678', '2007-08-27' ),
( NULL, 'pedro', 'pedrofc3@gmail.com', '993969654', '2007-12-13' ),
( NULL, 'lavinia', 'lavire5@gmail.com', '995739872', '2007-05-01' ),
( NULL, 'maria', 'mariavbl@gmail.com', '998749991', '2008-02-12 '),
( NULL, 'joao', 'joaovb7@gmail.com', '994531236', '2008-03-21' ),
( NULL, 'carol',  'caroll8@gmail.' , '997835644', '2008-02-30'),
( NULL, 'everton', 'evertinl9@gmail.com', '994329438', '2000-05-30' ),
( NULL, 'lucas',  'lucasvg10@gmail.com', '99432-3697', '2007-03-08' );

INSERT INTO PRODUTOS
VALUES
( NULL, 'Bleu de Chanel Eau de Parfum', 1000.00, 'O Bleu é um perfume masculino do tipo amadeirado.', 100 ),
( NULL, 'Dior Sauvage', 800.90, 'O Sauvage é considerado uma fragrância masculina aromática do tipo fougère', 200 ),
( NULL, 'Versace Eros', 450.90, 'o Eros é mais indicado para as estações frias', 300 ),
( NULL, 'Paco Rabanne Invictus', 600.90, 'Esta é uma fragrância do tipo aquática amadeirada masculina', 400 ),
( NULL, 'Azzaro Pour Homme', 550.90, 'É uma fragrância do tipo floral, sendo mais indicada para inverno e outono', 500 ),
( NULL, 'Armani Acqua de Giò', 490.90, 'O perfume recebeu como fonte de inspiração o mar, sendo classificado como um perfume aromático', 600 ),
( NULL, '212 VIP Black', 650.90,' O 212  é considerado de tipo musgo-floral, o que dá um toque suave, porém marcante', 700 ),
( NULL, 'CK One Calvin Klein', 650.90, 'É composto de notas de freesia, tangerina, cardamomo, bergamota e lavanda, 800'),
( NULL, 'Polo Red Ralph Lauren', 520.90, 'O perfume Polo Red, da Ralph Lauren, traz em sua composição muita versatilidade de uso', 900 ),
( NULL, ' Le Male Jean Paul Gaultier', 600.90, ' é um clássico perfume Oriental Fougère, com uma fragrância que combina notas de menta, cardamomo, lavanda e canela.', 1000 );

SELECT * FROM PEDIDOS;
INSERT INTO PEDIDOS
VALUES
( NULL, 1, '2024-03-20', 0, '2024-03-25' ),
( NULL, 2, '2024-03-19', 0, '2024-03-24' ),
( NULL, 3, '2024-03-18', 0, '2024-03-23' ),
( NULL, 4, '2024-03-17', 0, '2024-03-22' ),
( NULL, 5, '2024-03-16', 0, '2024-03-21' ),
( NULL, 6, '2024-03-15', 0, '2024-03-20' ),
( NULL, 7, '2024-03-14', 0, '2024-03-19' ),
( NULL, 8, '2024-03-13', 0, '2024-03-18' ),
( NULL, 9, '2024-03-12', 0, '2024-03-17' ),
( NULL, 10, '2024-03-11', 0, '2024-03-16' );

SELECT * FROM LISTA_ITENS;
INSERT INTO LISTA_ITENS
VALUES
( NULL, 1, 1, 3, 0,0),
( NULL, 2, 2, 4, 0,0),
( NULL, 3, 3, 7, 0,0),
( NULL, 4, 4, 9, 0,0),
( NULL, 5, 5, 2, 0,0),
( NULL, 6, 6, 12, 0,0),
( NULL, 7, 7, 4, 0,0),
( NULL, 8, 8, 3, 0,0),
( NULL, 9, 9, 19, 0,0),
( NULL, 10, 10, 1, 0,0);

UPDATE CLIENTES
SET NOME = 'antonynvs'
WHERE ID = 8;

UPDATE PRODUTOS
SET PRECO = 560.00
WHERE ID = 5;

UPDATE PEDIDOS
SET DATA_COMPRA= '2024-07-17'
WHERE ID = 7;

UPDATE LISTA_ITENS
SET VALOR_UNITARIO = ( SELECT PRECO FROM PRODUTOS WHERE ID = PRODUTOS_ID ),  VALOR_TOTAL = ( SELECT PRECO*QTD_ESTOQUE FROM PRODUTOS WHERE ID = PRODUTOS_ID );

DELETE FROM LISTA_ITENS WHERE ID = 7;
DELETE FROM LISTA_ITENS WHERE ID = 8;