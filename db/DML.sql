use iris;

select * from category;
select * from product;
select * from attribute;
select * from attribute_value;
select * from option_set;
select * from product_option_set;

drop table product;
drop table product_attribute;
drop table category;
drop table attribute_value;
drop table attribute;

# USER RELATED

insert into user_type
(user_type)
values
("cliente"), 					#1
("empresário"),					#2
("administrador empresarial"),	#3
("cidadão vendedor"),			#4
("supervisor de conteúdo"),		#5
("revisor de conteúdo")			#6
;

insert into seller 
(
	seller_id, 
    seller_name
) 
VALUES
(1, 'Doceria da Ana'),
(2, 'Bebidas do Carlos'),
(3, 'Eletrônicos Silva'),
(4, 'AutoPeças Oliveira'),
(5, 'Música & Cia'),
(6, 'Esportes Radicais'),
(7, 'Moda Bella'),
(8, 'Carros Clássicos BR'),
(9, 'Confeitaria Top'),
(10, 'Distribuidora de Bebidas'),
(11, 'Tech Gadgets'),
(12, 'AutoPerformance'),
(13, 'Instrumentos Musicais'),
(14, 'Artigos Esportivos'),
(15, 'Boutique Fashion'),
(16, 'Veículos Antigos'),
(17, 'Doces da Vovó'),
(18, 'Bebidas Premium'),
(19, 'EletroShop'),
(20, 'Mecânica Paulista'),
(21, 'Loja de Instrumentos'),
(22, 'Academia Store'),
(23, 'Moda Jovem'),
(24, 'Colecionadores de Carros'),
(25, 'Padaria do João'),
(26, 'Sucos Naturais'),
(27, 'Casa Eletrônica'),
(28, 'AutoCenter Rio'),
(29, 'Música Express'),
(30, 'Esporte Total'),
(31, 'Moda Feminina'),
(32, 'Vintage Motors'),
(33, 'Confeitaria Mineira'),
(34, 'Bebidas do Nordeste'),
(35, 'Gamer Tech'),
(36, 'Pneus & Acessórios'),
(37, 'Som Profissional'),
(38, 'Camping Adventure'),
(39, 'Moda Masculina'),
(40, 'Classic Garage'),
(41, 'Bolos da Maria'),
(42, 'Distribuidora Água'),
(43, 'Eletrônicos Baratos'),
(44, 'Oficina Master'),
(45, 'Violões & Guitarras'),
(46, 'Futebol Store'),
(47, 'Jeans & Cia'),
(48, 'Fusca Mania'),
(49, 'Doces Regionais'),
(50, 'Bebidas Artesanais');

insert into _user (
    user_type_id,
    user_name,
    user_surname,
    user_legal_id,
    user_birthdate,
    user_email,
    user_phone,
    user_seller_id
) value
(2, 'João', 'Silva', '12345678909', '1985-03-15', 'joao.silva@email.com', '11987654321', 1),
(2, 'Maria', 'Santos', '98765432100', '1990-07-22', 'maria.santos@email.com', '21976543210', 2),
(2, 'Pedro', 'Oliveira', '45678912345', '1978-11-30', 'pedro.oliveira@email.com', '31965432109', 3),
(2, 'Ana', 'Souza', '32165498732', '1995-05-18', 'ana.souza@email.com', '41954321098', 4),
(2, 'Carlos', 'Rodrigues', '65412378965', '1982-09-12', 'carlos.rod@email.com', '11943210987', 5),
(2, 'Juliana', 'Ferreira', '78945612378', '1993-02-28', 'juliana.ferreira@email.com', '21932109876', 6),
(2, 'Fernando', 'Almeida', '15975346820', '1988-12-05', 'fernando.almeida@email.com', '31921098765', 7),
(2, 'Patrícia', 'Lima', '35715948624', '1975-06-19', 'patricia.lima@email.com', '41910987654', 8),
(2, 'Ricardo', 'Costa', '25814736985', '1991-08-25', 'ricardo.costa@email.com', '11909876543', 9),
(2, 'Amanda', 'Pereira', '95175382467', '1987-04-10', 'amanda.pereira@email.com', '21998765432', 10),
(2, 'Lucas', 'Barbosa', '75315948620', '1994-01-07', 'lucas.barbosa@email.com', '31987654321', 11),
(2, 'Isabela', 'Ribeiro', '85296374158', '1983-07-14', 'isabela.ribeiro@email.com', '41976543210', 12),
(2, 'Marcos', 'Gomes', '36985214785', '1979-03-29', 'marcos.gomes@email.com', '11965432109', 13),
(2, 'Tatiane', 'Martins', '14725836978', '1996-11-02', 'tatiane.martins@email.com', '21954321098', 14),
(2, 'Rafael', 'Carvalho', '65478932145', '1980-05-23', 'rafael.carvalho@email.com', '31943210987', 15),
(2, 'Camila', 'Fernandes', '32198765432', '1992-09-17', 'camila.fernandes@email.com', '41932109876', 16),
(2, 'Eduardo', 'Dias', '78912345678', '1986-02-11', 'eduardo.dias@email.com', '11921098765', 17),
(2, 'Vanessa', 'Monteiro', '45632198765', '1977-08-08', 'vanessa.monteiro@email.com', '21910987654', 18),
(2, 'Thiago', 'Nascimento', '15948627319', '1997-04-03', 'thiago.nascimento@email.com', '31909876543', 19),
(2, 'Letícia', 'Moreira', '75348621957', '1984-10-26', 'leticia.moreira@email.com', '41998765432', 20),
(2, 'Gustavo', 'Mendes', '25836914785', '1998-12-15', 'gustavo.mendes@email.com', '11987654321', 21),
(2, 'Daniela', 'Cavalcanti', '65412378901', '1981-06-30', 'daniela.cavalcanti@email.com', '21976543210', 22),
(2, 'Roberto', 'Rocha', '35795148620', '1976-01-24', 'roberto.rocha@email.com', '31965432109', 23),
(2, 'Mariana', 'Cardoso', '85274196358', '1999-07-19', 'mariana.cardoso@email.com', '41954321098', 24),
(2, 'Fábio', 'Teixeira', '15975346822', '1989-03-08', 'fabio.teixeira@email.com', '11943210987', 25),
(2, 'Cristina', 'Sampaio', '75315948621', '1983-11-11', 'cristina.sampaio@email.com', '21932109876', 26),
(2, 'Diego', 'Pinto', '45678912346', '1995-09-05', 'diego.pinto@email.com', '31921098765', 27),
(2, 'Larissa', 'Guimarães', '98765432101', '1974-04-27', 'larissa.guimaraes@email.com', '41910987654', 28),
(2, 'André', 'Cunha', '12345678910', '1990-02-14', 'andre.cunha@email.com', '11909876543', 29),
(2, 'Bianca', 'Duarte', '32165498733', '1987-12-01', 'bianca.duarte@email.com', '21998765432', 30),
(2, 'Rodrigo', 'Araújo', '65412378966', '1978-05-16', 'rodrigo.araujo@email.com', '31987654321', 31),
(2, 'Sandra', 'Brito', '78945612379', '1993-10-09', 'sandra.brito@email.com', '41976543210', 32),
(2, 'Paulo', 'Vasconcelos', '15975346823', '1986-08-22', 'paulo.vasconcelos@email.com', '11965432109', 33),
(2, 'Elaine', 'Lopes', '35715948625', '1979-01-13', 'elaine.lopes@email.com', '21954321098', 34),
(2, 'Márcio', 'Correia', '25814736986', '1994-06-04', 'marcio.correia@email.com', '31943210987', 35),
(2, 'Renata', 'Andrade', '95175382468', '1980-11-28', 'renata.andrade@email.com', '41932109876', 36),
(2, 'Alexandre', 'Bezerra', '75315948622', '1973-07-07', 'alexandre.bezerra@email.com', '11921098765', 37),
(2, 'Viviane', 'Tavares', '85296374159', '1996-02-20', 'viviane.tavares@email.com', '21910987654', 38),
(2, 'Hugo', 'Medeiros', '36985214786', '1985-04-25', 'hugo.medeiros@email.com', '31909876543', 39),
(2, 'Priscila', 'Fonseca', '14725836979', '1991-12-08', 'priscila.fonseca@email.com', '41998765432', 40),
(2, 'Leonardo', 'Moraes', '65478932146', '1977-03-17', 'leonardo.moraes@email.com', '11987654321', 41),
(2, 'Simone', 'Barros', '32198765433', '1998-09-02', 'simone.barros@email.com', '21976543210', 42),
(2, 'Vinícius', 'Peixoto', '78912345679', '1984-05-11', 'vinicius.peixoto@email.com', '31965432109', 43),
(2, 'Adriana', 'Castro', '45632198766', '1976-10-24', 'adriana.castro@email.com', '41954321098', 44),
(2, 'Felipe', 'Xavier', '15948627320', '1997-01-15', 'felipe.xavier@email.com', '11943210987', 45),
(2, 'Raquel', 'Diniz', '75348621958', '1982-08-19', 'raquel.diniz@email.com', '21932109876', 46),
(2, 'César', 'Sales', '25836914786', '1999-06-30', 'cesar.sales@email.com', '31921098765', 47),
(2, 'Lorena', 'Paiva', '65412378902', '1981-02-03', 'lorena.paiva@email.com', '41910987654', 48),
(2, 'José', 'Nunes', '35795148621', '1988-07-12', 'jose.nunes@email.com', '11909876543', 49),
(2, 'Tânia', 'Ramos', '85274196359', '1995-04-18', 'tania.ramos@email.com', '21998765432', 50);

insert into category
(category)
values
('confeitaria'), 	#1
('bebida'), 		#2
('eletrônicos'),	#3
('automotivos'),	#4
('automotores'),	#5
('musicais'),		#6
('esportes'),		#7
('moda')			#8
;

insert into product (
	product_category_id, 
    product_title, 
    product_description, 
    product_price, 
    product_inventory, 
    product_seller_id
) 
values
-- Confeitaria
(1, 'Cupcake', 'Bolo servido em copo descartável de papel', 2.00, 50, 3),
(1, 'Bolo de Cenoura', 'Bolo úmido com cobertura de chocolate', 25.00, 15, 28),
(1, 'Pão de Mel', 'Doce de mel com recheio de doce de leite', 8.50, 30, 50),
(1, 'Brigadeiro Gourmet', 'Brigadeiro premium com granulado especial', 3.50, 80, 10),
(1, 'Torta de Limão', 'Torta com base de biscoito e creme de limão', 18.00, 12, 38),
(1, 'Donut', 'Rosquinha fofa com cobertura glacê', 6.90, 40, 17),
(1, 'Macaron', 'Biscoito francês com recheio de ganache', 9.90, 25, 41),
(1, 'Pudim de Leite', 'Sobremesa cremosa com calda de caramelo', 12.00, 20, 9),
(1, 'Bolo de Pote', 'Bolo individual em camadas com recheio', 15.00, 35, 33),
(1, 'Croissant', 'Massa folhada francesa com manteiga', 7.50, 50, 25),
-- Bebidas 
(2, 'Gatorade', 'Isotônico esportivo que ajuda na reposição de líquidos e sais minerais', 4.00, 250, 2),
(2, 'Água Mineral', 'Água natural sem gás 500ml', 2.50, 300, 45),
(2, 'Suco de Laranja', 'Suco natural integral 1L', 8.00, 40, 26),
(2, 'Café Premium', 'Grãos selecionados torra média 250g', 22.00, 30, 43),
(2, 'Refrigerante Cola', 'Lata 350ml', 5.00, 200, 18),
(2, 'Chá Gelado', 'Chá verde com limão 1L', 7.50, 60, 34),
(2, 'Energético', 'Bebida energética 250ml', 10.00, 150, 50),
(2, 'Vinho Tinto Seco', 'Vinho chileno reserva 750ml', 45.00, 25, 29),
(2, 'Cerveja Artesanal', 'Lager premium 600ml', 15.00, 80, 42),
(2, 'Água de Coco', 'Água de coco natural 330ml', 6.50, 100, 10),
-- Eletrônicos
(3, 'Xiaomi C13', 'Smartphone 6.5 polegadas AMOLED, 128GB', 2999.00, 10, 11),
(3, 'SONY IPX-201', 'Câmera digital 4K com lente grande angular', 1499.99, 15, 19),
(3, 'KZ P2-E44', 'Fone sem fio com cancelamento de ruído', 99.99, 25, 35),
(3, 'ATH-M40x', 'Fone de ouvido para produção musical com cancelamento de ruído', 689.90, 30, 27),
(3, 'Tablet Samsung', 'Tablet 10 polegadas 64GB Wi-Fi', 1299.00, 18, 7),
(3, 'Smart TV 50', 'TV LED 4K HDR com Smart Hub', 2199.00, 12, 43),
(3, 'Notebook Ultrafino', 'Intel i5 8GB RAM 256GB SSD', 3499.00, 8, 11),
(3, 'Smartwatch Pro', 'Monitor de saúde e notificações', 799.90, 22, 35),
(3, 'Roteador Wi-Fi 6', 'Alta velocidade dual-band', 499.00, 30, 19),
(3, 'Caixa de Som Bluetooth', 'Som estéreo 20W à prova dágua', 349.90, 40, 27),
(3, 'Monitor Gamer', '27" 144Hz 1ms resposta', 1499.90, 14, 11),
(3, 'Drone DJI Mini', 'Câmera 4K estabilizada 249g', 1899.00, 9, 19),
(3, 'Console Portátil', 'Emulador de jogos retro', 599.00, 20, 35),
(3, 'Impressora Multifuncional', 'Impressão/scanner/cópia Wi-Fi', 699.00, 17, 27),
(3, 'Disco SSD 1TB', 'Armazenamento sólido alta velocidade', 399.00, 35, 7),
(3, 'Webcam Full HD', 'Microfone integrado e ajuste automático', 299.00, 28, 11),
(3, 'Carregador Portátil', 'Bateria 20000mAh USB-C', 199.00, 50, 19),
(3, 'Teclado Mecânico', 'Switches azuis retroiluminados', 449.00, 25, 35),
(3, 'Mouse Gamer', '16000DPI 7 botões programáveis', 349.00, 32, 27),
(3, 'Projetor Mini', 'Projeção HD 120" portátil', 899.00, 11, 43),
-- Automotivos
(4, 'Kit de Freios ABS Hinor', 'Kit de freios ABS para carro', 399.99, 20, 4),
(4, 'Capacete G7', 'Proteção superior com viseira para motociclos', 599.99, 14, 20),
(4, 'Suporte de Celular Veicular', 'Apoio universal para celulares', 39.99, 50, 36),
(4, 'Óleo de Motor 5W30', 'Lubrificante sintético para motores', 49.90, 200, 28),
(4, 'Limpador de Parabrisa', 'Limpador universal feito de silicone', 19.90, 150, 44),
(4, 'Bateria Automotiva', '60Ah 600CCA partida a frio', 499.00, 18, 12),
(4, 'Pneu Aro 15', 'Pneu radial 195/65R15', 349.00, 40, 4),
(4, 'Câmera de Ré', 'Instalação fácil com visão noturna', 129.90, 35, 20),
(4, 'Tapete Automotivo', 'Kit 4 peças antiderrapante', 89.90, 60, 36),
(4, 'Limpador de Carburador', 'Spray para limpeza de peças', 29.90, 120, 28),
(4, 'Cabo de Seta', 'Conjunto para reposição', 45.00, 80, 44),
(4, 'Lampada H7', 'Farol 55W branco brilhante', 39.90, 200, 12),
(4, 'Central Multimídia', 'Tela 7" Android Auto/Apple CarPlay', 799.00, 15, 4),
(4, 'Capa de Volante', 'Couro sintético com costura', 59.90, 45, 20),
(4, 'Desembaçador Traseiro', 'Película adesiva para vidro', 35.00, 70, 36),
(4, 'Calha de Chuva', 'Proteção para janelas de carro', 119.00, 25, 28),
(4, 'Cadeira Infantil', 'Assento de segurança para crianças', 399.90, 20, 44),
(4, 'Inflador Portátil', 'Compressor 12V digital', 149.00, 55, 12),
(4, 'Aditivo Radiador', 'Refrigerante concentrado', 42.50, 90, 4),
(4, 'Cera Automotiva', 'Proteção para pintura 500ml', 79.90, 40, 20),
-- Musicais
(6, 'Violão Gemini KLSS', 'Violão clássico com cordas de nylon', 799.99, 12, 5),
(6, 'Teclado Yamaha E631', 'Teclado musical de 61 teclas', 499.99, 8, 21),
(6, 'Guitarra Startocaster EG101', 'Guitarra elétrica modular', 899.90, 10, 37),
(6, 'Bateria Yamaha EB13', 'Bateria eletrônica sem ruídos', 1299.90, 5, 13),
(6, 'Microfone Logitech Blue Yeti', 'Microfone condensador 48kHz', 499.90, 15, 29),
(6, 'Microfone Shure MV7', 'Microfone dinâmico 44.1kHz', 1470.00, 25, 5),
(6, 'Baixo Elétrico', '4 cordas corpo sólido', 1199.00, 7, 21),
(6, 'Ukulele Soprano', 'Ukulele havaiano tamanho padrão', 299.00, 20, 37),
(6, 'Pedal Distorção', 'Efeito para guitarra heavy metal', 349.00, 18, 13),
(6, 'Metrônomo Digital', 'Regulador de tempo profissional', 189.00, 30, 29),
(6, 'Amplificador 30W', 'Combo para guitarra/baixo', 699.00, 12, 5),
(6, 'Palhetas Diversas', 'Kit 12 unidades variadas', 19.90, 150, 21),
(6, 'Flauta Doce', 'Instrumento soprano para iniciantes', 89.00, 40, 37),
(6, 'Saxofone Alto', 'Instrumento de sopro profissional', 2899.00, 6, 13),
(6, 'Piano Digital', '88 teclas sensitivas peso gradado', 4599.00, 4, 29),
-- Esportes
(7, 'Tênis Esportivo', 'Tênis de corrida com amortecimento', 199.90, 30, 6),
(7, 'Raquete de Tênis', 'Raquete professional com bounce effect', 499.99, 10, 22),
(7, 'Short Fitness', 'Shorts com tecido respirável', 89.99, 35, 38),
(7, 'Smartwatch Fit', 'Relógio com monitoramento cardíaco', 299.99, 27, 14),
(7, 'Bicicleta Ergométrica', 'Resistência magnética 8 níveis', 1899.00, 8, 30),
(7, 'Luva de Boxe', 'Proteção profissional 12oz', 219.00, 25, 46),
(7, 'Esteira Elétrica', 'Velocidade até 18km/h', 3999.00, 6, 6),
(7, 'Mochila Hidratação', 'Bolsa de água 2L para corrida', 149.00, 40, 22),
(7, 'Colchonete Yoga', 'Antiderrapante 183x61cm', 99.90, 60, 38),
(7, 'Halteres Ajustáveis', 'Kit 20kg regulável', 349.00, 18, 14),
(7, 'Bola de Futebol', 'Tamanho oficial FIFA', 129.90, 35, 30),
(7, 'Óculos Natação', 'Vedação total antiembaçante', 79.00, 50, 46),
(7, 'Corda Pular', 'Aço com rolamentos e contador', 45.00, 80, 6),
(7, 'Camisa Dry Fit', 'Tecido tecnológico para esportes', 89.90, 45, 22),
(7, 'Joelheira Protetora', 'Suporte para atividades físicas', 59.90, 70, 38),
-- Moda
(8, 'Camisa Social', 'Camisa masculina slim em algodão', 49.99, 40, 7),
(8, 'Jaqueta Jeans', 'Jaqueta feminina escura', 99.99, 22, 23),
(8, 'Blusa Oversized', 'Blusa de moletom larga', 159.99, 18, 39),
(8, 'Camisa Básica', 'Camiseta unissex 100% algodão', 129.90, 100, 15),
(8, 'Calça Jeans', 'Calça jeans tamanho padrão', 39.90, 100, 31),
(8, 'Vestido Floral', 'Vestido feminino estampado', 89.90, 50, 7),
(8, 'Jaqueta de Couro', 'Jaqueta em couro sintético', 249.90, 30, 23),
(8, 'Tênis Casual', 'Tênis branco versátil', 159.90, 20, 39),
(8, 'Blusa Moletom', 'Moletom unissex com capuz', 99.90, 60, 15),
(8, 'Shorts Jeans', 'Shorts feminino cintura alta', 69.90, 35, 31),
(8, 'Sandália Plataforma', 'Saltado confortável 5cm', 129.00, 40, 7),
(8, 'Blazer Slim', 'Social masculino não-engomado', 199.00, 28, 23),
(8, 'Pijama Conforto', 'Conjunto algodão estampado', 79.90, 45, 39),
(8, 'Cinto Couro', 'Cinto masculino fivela simples', 59.90, 70, 15),
(8, 'Meia Esportiva', 'Kit 3 pares cano alto', 29.90, 150, 31),
(8, 'Bolsa Tote', 'Bolsa grande em lona resistente', 149.00, 25, 7),
(8, 'Sapato Social', 'Sapato masculino couro legítimo', 289.00, 30, 23),
(8, 'Regata Algodão', 'Camiseta básica sem manga', 39.90, 80, 39),
(8, 'Cachecol Lã', 'Acessório inverno 100% lã', 89.00, 50, 15),
(8, 'Boné Aba Reta', 'Boné ajustável unissex', 49.90, 60, 31),
(8, 'Macaquinho Verão', 'Conjunto feminino alcinha', 119.00, 35, 7),
(8, 'Cueca Boxer', 'Kit 3 algodão respirável', 69.90, 100, 23),
(8, 'Body Infantil', 'Body manga longa bebê', 39.90, 70, 39),
(8, 'Touca Tricô', 'Acessório inverno ponto tricô', 35.00, 90, 15),
(8, 'Sutiã Esportivo', 'Suporte alta compressão', 89.90, 55, 31),
(8, 'Calça Legging', 'Legging fitness elástica', 79.00, 65, 7),
(8, 'Blusa de Renda', 'Blusa feminina transparente', 109.00, 40, 23),
(8, 'Cinto Feminino', 'Cinto fino com fivela dourada', 45.00, 85, 39),
(8, 'Polo Masculina', 'Camisa piquet premium', 129.00, 38, 15),
(8, 'Mochila Executiva', 'Mochila para notebook 15"', 199.00, 42, 31),
-- Automotores
(5, 'Fusca 1300', 'Volkswagen 1978, motor 1.3L a ar, conservado original', 29900.00, 3, 8),
(5, 'Chevette Tubarão', 'Chevrolet 1989, 1.6L, teto solar, raro', 28500.00, 2, 16),
(5, 'Opala Comodoro', 'Chevrolet 1986, 4.1L 6 cilindros, vidros elétricos', 41500.00, 4, 24),
(5, 'Brasília', 'Volkswagen 1980, motor 1.6L, versão TL', 18700.00, 5, 32),
(5, 'Maverick GT', 'Ford 1975, V8 302, rodas aro 15 originais', 68900.00, 1, 40),
(5, 'Gurgel X12', 'Carroceria de fibra, tração dianteira, 1979', 23500.00, 3, 48),
(5, 'Corcel II', 'Ford 1982, 1.6L OHC, banco de veludo', 27400.00, 2, 8),
(5, 'Dodge Charger R/T', '1978, V8 318, faróis escamoteáveis', 75200.00, 1, 16),
(5, 'Kombi Standard', 'Volkswagen 1985, motor 1.4, janelas laterais', 43600.00, 4, 24),
(5, 'Puma GTE', 'Cupê esportivo 1978, motor VW 1.6, manual', 53800.00, 2, 32),
(5, 'Fiat 147', 'Primeiro carro nacional a álcool, 1980', 16900.00, 3, 40),
(5, 'Del Rey Belina', 'Ford 1989, 1.8L, versão GLX', 18900.00, 4, 48),
(5, 'Variant', 'Volkswagen 1973, perua a ar, 1600S', 32700.00, 2, 8),
(5, 'Galaxie 500', 'Ford 1974, V8 302, landau top', 61900.00, 1, 16),
(5, 'Miura', 'Gurgel 1989, utilitário off-road, fibra', 29500.00, 3, 24),
(5, 'Chevy 500', 'Chevrolet 1971, motor 153, capota marítima', 45300.00, 2, 32),
(5, 'Dodginho', 'Dodge 1978, picape D100, 318 V8', 48200.00, 1, 40),
(5, 'Fiat Oggi', 'Versão perua do Uno, 1991, 1.5L', 16300.00, 4, 48),
(5, 'Santana', 'Volkswagen 1988, 2.0L, teto solar elétrico', 23800.00, 3, 8),
(5, 'Veraneio', 'Chevrolet 1976, V8 4.1, tração 4x4', 57400.00, 1, 16);

insert into attribute
(attribute)
values
('sabor'),
('tamanho'),
('litragem'),
('gramagem')
;

insert into attribute_value
(attribute_id, attribute_value)
values

# Sabor
(1 ,'laranja'),
(1 ,'uva'),
(1 ,'blue berry'),
(1 ,'maracujá'),
(1 ,'morango'),
(1 ,'leite condensado'),

# Tamanho
(2, 'grande'),
(2, 'médio'),
(2, 'pequeno'),

# Litragem
(3, '500ml'),
(3, '1l'),

# Gramagem
(4, '40g')
;

insert into option_set
(option_set)
values

('Cupcake'),
('Gatorade')
;


# A horrible thing to do this by hande, but makes sense when in a website/api
insert into option_set_attribute 
(option_set_id, attribute_id)
values
# Cupcake
(1, 1), 
(1, 2), 
(1, 4),

# Gatorade
(2, 1),
(2, 3)
;

insert into product_option_set
(product_id, option_set_id)
values
(1, 1),
(2, 2)
;



insert into product_variant
(product_id, product_sku, product_variant_price_adjustment, product_variant_inventory)
values
(1, "Cupcake-Morango-Médio", 2, 20),
(1, "Cupcake-Morango-Grande", 2, 10),
(1, "Cupcake-Leite_Condensado-Médio", 0, 12),

(2, "Gatorade-Laranja-500ml", 1.00, 50),
(2, "Gatorade-Uva-500ml", 2.00, 129),
(2, "Gatorade-Uva-1l", 5.00, 16),
(2, "Gatorade-Maracujá-500ml", 0.00, 12),
(2, "Gatorade-Morango-500ml", -2.00, 20)
;

insert into variant_attribute
(product_variant_id, attribute_id, attribute_value_id)
values
(1, 1, 5), #Cupcake-Morango-Médio
(1, 2, 8),
(2, 1, 5), #Cupcake-Morango-Grande
(2, 2, 7),
(3, 1, 6), #Cupcake-Leite_Condensado-Médio
(3, 2, 8),

(4, 1, 1), #Gatorade-Laranja-500ml
(4, 3, 10),

(5, 1, 2), #Gatorade-Uva-500ml
(5, 3, 10), 
(6, 1, 2), #Gatorade-Uva-1l
(6, 3, 11), 
(7, 1, 4), #Gatorade-Maracujá-500ml
(7, 3, 10),
(8, 1, 5), #Gatorade-Morango-500ml
(8, 3, 10)
;

drop procedure Select__AllProductVariantsAndItsAttributes; -- For testing
delimiter //
# Gets all the attributes for a given procdut
create procedure Select__AllProductVariantsAndItsAttributes(in p_product_id int)
begin 
	with product_attribute as (
		select
			a.attribute_id, 
			a.attribute
		from variant_attribute va
		join attribute a on va.attribute_id = a.attribute_id
		join product_variant v on va.product_variant_id = v.product_variant_id
		where v.product_id = p_product_id
		group by a.attribute_id, a.attribute
	)
	select
		-- Maybe we'll need to get info from the parent product.
		-- p.product_id,
		v.product_sku,
		p.product_price,
		v.product_variant_price_adjustment,
		p.product_price + v.product_variant_price_adjustment as product_variant_adjusted_price,
		# "Format" the field to somehow, a JSON
		concat('{',
			group_concat(
				concat('"', a.attribute, '"', 
						':', 
						'"', av.attribute_value, '"'
					)
					),
				'}'
			)
		as attributes
	from 
		product p
	join 
		product_variant v on p.product_id = v.product_id
	join 
		variant_attribute va on v.product_variant_id = va.product_variant_id
	join 
		attribute a on va.attribute_id = a.attribute_id
	join 
		attribute_value av on va.attribute_value_id = av.attribute_value_id
	join 
		product_attribute pa on a.attribute_id = pa.attribute_id
	where 
		p.product_id = p_product_id
	group by 
		p.product_title, 
		v.product_sku, 
		v.product_variant_price_adjustment, 
		v.product_variant_id;
end //

delimiter ;

call Select__AllProductVariantsAndItsAttributes(1);
call Select__AllProductVariantsAndItsAttributes(2);

# Gets the inventory from a given product (parent) and
# subtracts them by the sum of the inventory of its flavors

# Throws a fake line at the start because the subtraction only
# occurs on the next row.
drop procedure Select__ProductRemainingInventory;

delimiter //
create procedure Select__ProductRemainingInventory(
		in p_product_id int
)
begin
    with product_total as (
    select 
        p.product_id,
        p.product_inventory
    from 
		product p
    where 
		p.product_id = p_product_id 
	),
	all_variant as (
		select 
			v.product_variant_id,
			v.product_sku,
			v.product_variant_inventory,
			1 as is_real_row
		from product_variant v
		where v.product_id = p_product_id
	),
	# Add fake row with null stuff along the real variant data
	all_variant_with_null_start as (
		select
			null as product_variant_id, 
			null as product_sku,
			0 as product_variant_inventory, 
			0 as is_real_row
		union all
		select * from all_variant
	),
	product_variants as (
		select
			av.product_variant_id,
			av.product_sku,
			av.product_variant_inventory,
			# For the first line, it has to get the parent product inventory
			# All other lines just subtract by the variant inventory.
			
			# Updates the previous remaing. Or else, the remaining stays the smae forever.

			sum(av.product_variant_inventory) over (
                order by 
                av.is_real_row, 
                av.product_variant_id
                rows between unbounded preceding and current row
            ) as running_sum,
            row_number() over(order by 
				av.is_real_row, 
                av.product_variant_id
                ) 
                as row_num,

			pt.product_inventory
		from 
			# Resets the count on every row of the select and recalculate based on current running and previous line values.
			all_variant_with_null_start av
		cross join 
			product_total pt
		order by 
			av.is_real_row, av.product_variant_id # Fake first, real then
	)
	select
		product_variant_id,
		product_sku,
		product_variant_inventory,
        case
			when 
				row_num = 1 then product_inventory
			else first_value(product_inventory) over() - lag(running_sum, 0, 0) over(order by row_num)
		end as remaining_inventory,
		product_inventory
	from 
		product_variants
        ;
end //

delimiter ;

call Select__ProductRemainingInventory(1);
call Select__ProductRemainingInventory(2);


SELECT
    p.product_id,
    p.product_title,
    p.product_price,
    c.category,
    s.seller_id,
    s.seller_name,
    
    CASE FLOOR(RAND() * 5)
        WHEN 0 THEN 'Entregue'
        WHEN 1 THEN 'Em trânsito'
        WHEN 2 THEN 'Em processamento'
        WHEN 3 THEN 'Cancelado'
        ELSE 'Obstruído'
    END AS delivery_status,
    
    CASE FLOOR(RAND() * 8)
        WHEN 0 THEN 'Minas Gerais'
        WHEN 1 THEN 'São Paulo'
        WHEN 2 THEN 'Paraná'
        WHEN 3 THEN 'Santa Catarina'
        WHEN 4 THEN 'Goiânia'
        WHEN 5 THEN 'Acre'
        WHEN 6 THEN 'Espirito Santo'
        WHEN 7 THEN 'Rio Grande do Sul'
        ELSE 'Goiás'
    END AS delivery_destination
FROM product p
JOIN seller s ON p.product_seller_id = s.seller_id
LEFT JOIN _user u ON s.seller_id = u.user_seller_id
INNER JOIN category c on c.category_id = p.product_category_id
ORDER BY c.category, s.seller_name, p.product_price ASC
;