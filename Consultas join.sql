-- 1. INNER JOIN: Listar todos os pedidos com informações do cliente e do prato
SELECT p.pedido_id, c.nome AS cliente, pr.nome AS prato, p.quantidade, p.data_pedido, p.status
FROM pedidos p
INNER JOIN clientes c ON p.cliente_id = c.cliente_id
INNER JOIN pratos pr ON p.prato_id = pr.prato_id;

-- 2. LEFT JOIN: Listar todos os clientes e seus pedidos (mesmo os que não fizeram pedidos)
SELECT c.nome, c.email, COUNT(p.pedido_id) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.cliente_id = p.cliente_id
GROUP BY c.cliente_id;

-- 3. RIGHT JOIN: Listar todos os pratos e quantas vezes foram pedidos (mesmo os nunca pedidos)
SELECT pr.nome, COUNT(p.pedido_id) AS vezes_pedido
FROM pedidos p
RIGHT JOIN pratos pr ON p.prato_id = pr.prato_id
GROUP BY pr.prato_id;