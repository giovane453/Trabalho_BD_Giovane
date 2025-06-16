-- Total de vendas por categoria de prato
SELECT pr.categoria, 
       SUM(pr.preco * p.quantidade) AS total_vendas,
       COUNT(p.pedido_id) AS quantidade_vendida
FROM pedidos p
JOIN pratos pr ON p.prato_id = pr.prato_id
GROUP BY pr.categoria;

-- Média de valor gasto por cliente
SELECT c.nome, AVG(pr.preco * p.quantidade) AS media_gasto
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
JOIN pratos pr ON p.prato_id = pr.prato_id
GROUP BY c.cliente_id;