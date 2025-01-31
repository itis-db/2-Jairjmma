WITH Productos_Caros AS (
    SELECT codigo_producto, nombre_producto, precio
    FROM Productos
    WHERE precio > 20
)
SELECT * FROM Productos_Caros;


SELECT p.id_pedido, c.nombre_cliente, pr.nombre_producto, dp.cantidad
FROM Pedidos p
         JOIN Clientes c ON p.email_cliente = c.email
         JOIN Detalles_Pedido dp ON p.id_pedido = dp.id_pedido
         JOIN Productos pr ON dp.codigo_producto = pr.codigo_producto;


SELECT nombre_cliente AS nombre FROM Clientes
UNION
SELECT nombre_producto AS nombre FROM Productos;
