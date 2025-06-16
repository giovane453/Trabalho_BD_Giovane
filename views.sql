-- View para relatório de vendas por dia
CREATE VIEW vendas_por_dia AS
SELECT DATE(data_pedido) AS dia, 
       COUNT(pedido_id) AS total_pedidos, 
       SUM(pr.preco * p.quantidade) AS valor_total
FROM pedidos p
JOIN pratos pr ON p.prato_id = pr.prato_id
GROUP BY DATE(data_pedido);

-- View para clientes frequentes
CREATE VIEW clientes_frequentes AS
SELECT c.cliente_id, c.nome, COUNT(p.pedido_id) AS total_pedidos
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
GROUP BY c.cliente_id
HAVING COUNT(p.pedido_id) > 1;