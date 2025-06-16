-- Inserir clientes
INSERT INTO clientes (nome, email, data_cadastro) VALUES
('João Silva', 'joao@email.com', '2023-01-15'),
('Maria Souza', 'maria@email.com', '2023-02-20'),
('Carlos Oliveira', 'carlos@email.com', '2023-03-10'),
('Ana Pereira', 'ana@email.com', '2023-04-05');

-- Inserir telefones
INSERT INTO telefones (cliente_id, numero, tipo) VALUES
(1, '11987654321', 'Celular'),
(1, '1133334444', 'Residencial'),
(2, '1199998888', 'Celular'),
(3, '1188887777', 'Comercial'),
(4, '1177776666', 'Celular');

-- Inserir pratos
INSERT INTO pratos (nome, descricao, preco, categoria) VALUES
('Feijoada', 'Feijoada completa com acompanhamentos', 45.90, 'Principal'),
('Strogonoff', 'Strogonoff de frango com arroz e batata palha', 32.50, 'Principal'),
('Salada Caesar', 'Salada com alface, croutons e molho Caesar', 22.00, 'Entrada'),
('Pudim', 'Pudim de leite condensado', 12.90, 'Sobremesa'),
('Refrigerante', 'Lata 350ml', 6.50, 'Bebida');

-- Inserir ingredientes
INSERT INTO ingredientes (nome, unidade_medida, prato_id, quantidade) VALUES
('Feijão preto', 'kg', 1, 0.3),
('Carne seca', 'kg', 1, 0.2),
('Frango', 'kg', 2, 0.25),
('Creme de leite', 'ml', 2, 100),
('Alface', 'g', 3, 150),
('Croutons', 'g', 3, 50),
('Leite condensado', 'ml', 4, 200),
('Ovos', 'un', 4, 3);

-- Inserir pedidos
INSERT INTO pedidos (cliente_id, prato_id, data_pedido, quantidade, status) VALUES
(1, 1, '2023-05-10 12:30:00', 1, 'Entregue'),
(1, 4, '2023-05-10 12:30:00', 1, 'Entregue'),
(2, 2, '2023-05-10 13:15:00', 2, 'Entregue'),
(3, 3, '2023-05-11 19:20:00', 1, 'Pronto'),
(4, 5, '2023-05-11 19:25:00', 3, 'Recebido'),
(1, 2, '2023-05-12 12:45:00', 1, 'Em preparo');