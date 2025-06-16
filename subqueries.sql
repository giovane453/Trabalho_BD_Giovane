-- 1. Clientes que fizeram pedidos acima da média de valor
SELECT c.nome, pr.nome AS prato, pr.preco
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
JOIN pratos pr ON p.prato_id = pr.prato_id
WHERE pr.preco > (SELECT AVG(preco) FROM pratos);

-- 2. Pratos que nunca foram pedidos
SELECT nome
FROM pratos
WHERE prato_id NOT IN (SELECT DISTINCT prato_id FROM pedidos);